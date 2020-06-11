using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using System.Windows.Media.Imaging;
using WpfAppExample1.Entity;
using WpfAppExample1.Models;
using WpfAppExample1.UserControls;

namespace WpfAppExample1.ViewModels
{
    class LigViewModel : ObservableObject
    {
        
        ObservableCollection<Lig> _ligListesi;
        private Lig _mySelectedLigItem;
        private PuanDurumuSatir _mySelectedTakimItem;
        private byte[] _myImage;
        private byte[] _myTakimResim;
        private Boolean myTakimResimVisibility;
        Model1 veritabani;
        ObservableCollection<PuanDurumuSatir> puanDurumuListe;
        BaseViewModel _currentViewModel;
              
        
//Constructor
         
        public LigViewModel()
        {           
            veritabani = new Model1();
            puanDurumuListe = new ObservableCollection<PuanDurumuSatir>();

            //Program ilk açıldığında default olarak Türkiye Süper liginin bilgileri görüntülensin

            MySelectedLigItem = veritabani.Ligs.Where(x => x.lig_ad == "Turkiye Super Lig").FirstOrDefault();            
        }


       // init() fonksiyonu MyselectedLigItem set edildiginde calisir ve ilgili ligin puandurumu , logosu vs. kontrollere atanır
        private void init(int lig_id)
        {
            TakimlariListeyeEkle(lig_id);

            PuanDurumuListe = new ObservableCollection<PuanDurumuSatir>(puanDurumuListe.OrderByDescending(i => i.puan));

            TakimlariSirala();

            MyImage = GetLigImageToDatabase(lig_id);

            _ligListesi = new ObservableCollection<Lig>(veritabani.Ligs.ToList());

            CurrentViewModel = new UcLigDetayViewModel(lig_id);

            MyTakimResimVisibility = false;
        }

// Properties

        public Boolean MyTakimResimVisibility
        {
            get
            {
                return myTakimResimVisibility;
            }
            set
            {
                myTakimResimVisibility = value;
                OnPropertyChanged("MyTakimResimVisibility");
            }
        }


        // MySelectedLigItem combobox ta seçilen değer değiştiğinde set edilir
        public Lig MySelectedLigItem
        {
            get { return _mySelectedLigItem; }
            set
            {
                _mySelectedLigItem = value;
                init(_mySelectedLigItem.lig_id);
                OnPropertyChanged("MySelectedLigItem");
            }
        }


        //Gridde görüntülenecek diğer View Model sınıfı bu değişkende tutulur ( UcLigDetayVM ve ya UcTakimDetayVm)
        //CurrentViewModel'a bir viewmodel atandığında ilgili viewmodel kendisiyle eşleşen page ile birlikte grid'e bağlanmış olur
        //eşleşme xaml tarafında yapılmıştır (MainWindow.xaml)

        public BaseViewModel CurrentViewModel {
            get
            {
                return _currentViewModel;
            }
            set
            {
                _currentViewModel = value;
                OnPropertyChanged("CurrentViewModel");
            }
            }


        public byte[] MyImage
        {
            get
            {
                return _myImage;
            }
            set
            {
                _myImage = value;
                OnPropertyChanged("MyImage");
            }
        }

        public byte[] MyTakimResim
        {
            get
            {
                return _myTakimResim;
            }
            set
            {
                if (value != null) {       
                     _myTakimResim = value;
                     OnPropertyChanged("MyTakimResim");
                }
            }
        }


        //Puan durumunun seçilen satirinda bulunan takim MySelectedTakimItem değişkenine atanir
        //Bir takım seçildiğinde ve ya seçilen takım değiştiğinde takıma dair istatistikleri barındıran 
        // UcTakimDetayVm ve UcTakimDetay.xaml grid'te görüntülenir

        public PuanDurumuSatir MySelectedTakimItem
        {
            get
            {
                if (_mySelectedTakimItem!=null)
                {
                    return _mySelectedTakimItem;
                }
                else
                {
                    return new PuanDurumuSatir();
                }
            }
            set
            {

                if (value == null)
                {
                    _mySelectedTakimItem = new PuanDurumuSatir();
                }
                else { 
                _mySelectedTakimItem = value;
                OnPropertyChanged("MySelectedTakimItem");
                TakimBagla(_mySelectedTakimItem.takim_id);
                }
            }
        } 

        private void TakimBagla(int takim_id)
        {
            
            MyTakimResim = GetTakimResimToDatabase(takim_id);
            MyTakimResimVisibility = true;
            CurrentViewModel = new UcTakimDetayViewModel(takim_id);
        }

        public ObservableCollection<PuanDurumuSatir> PuanDurumuListe
        {
            get
            {
                return puanDurumuListe;
            }
            set 
            {
                puanDurumuListe = value;
                OnPropertyChanged("PuanDurumuListe");
            }
        }

        public ObservableCollection<Lig> LigListesi
        {
            get
            {
                return _ligListesi;
            }
            set { }
        }

       

//Takım ve Lig logolarının veritabanından alınmasını sağlayan fonksiyonlar

        public byte[] GetLigImageToDatabase(int lig_id=1)
        {
            //_myImage = null;
            var result = veritabani.Ligs.Where(t => t.lig_id == lig_id).SingleOrDefault();
            var resm = result.lig_logo;
            return resm;
        }

        public byte[] GetTakimResimToDatabase(int takim_id)
        {
            var result = veritabani.Takims.Where(t => t.takim_id == takim_id).SingleOrDefault();
            var resm = result.takim_logo;
            return resm;
        }


// Puan durumu tablosunun oluşturulması için kullanılan fonksiyonlar

            
        public void TakimlariListeyeEkle(int lig_id=1)
        {
            puanDurumuListe.Clear();
            
            List<PuanDurumuSatir> listeTmp = new List<PuanDurumuSatir>();
            foreach (var tk in veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x))
            {
                int takim_id = tk.takim_id;
                int macSayisi = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id || mac.depTk_id == tk.takim_id select mac).ToList().Count();
                int galibiyetSayisi = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id && mac.evms_Sk > mac.depms_Sk select mac).ToList().Count();
                galibiyetSayisi += (from mac in veritabani.Macs where mac.depTk_id == tk.takim_id && mac.evms_Sk < mac.depms_Sk select mac).ToList().Count();
                int beraberlikSayisi = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id && mac.evms_Sk == mac.depms_Sk select mac).ToList().Count();
                beraberlikSayisi += (from mac in veritabani.Macs where mac.depTk_id == tk.takim_id && mac.evms_Sk == mac.depms_Sk select mac).ToList().Count();
                int maglubiyetSayisi = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id && mac.evms_Sk < mac.depms_Sk select mac).ToList().Count();
                maglubiyetSayisi += (from mac in veritabani.Macs where mac.depTk_id == tk.takim_id && mac.evms_Sk > mac.depms_Sk select mac).ToList().Count();
                int attigiGol = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id select mac).Sum(s => s.evms_Sk);
                attigiGol += (from mac in veritabani.Macs where mac.depTk_id == tk.takim_id select mac).Sum(s => s.depms_Sk);
                int yedigiGol = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id select mac).Sum(s => s.depms_Sk);
                yedigiGol += (from mac in veritabani.Macs where mac.depTk_id == tk.takim_id select mac).Sum(s => s.evms_Sk);
                int averaj = attigiGol - yedigiGol;
                int puan = (galibiyetSayisi * 3) + (beraberlikSayisi);
                PuanDurumuSatir puanDurumuSatir = new PuanDurumuSatir();
                puanDurumuSatir.takim_id = takim_id;
                puanDurumuSatir.takimAd = tk.takim_ad;
                puanDurumuSatir.g_sayisi = galibiyetSayisi;
                puanDurumuSatir.b_sayisi = beraberlikSayisi;
                puanDurumuSatir.m_sayisi = maglubiyetSayisi;
                puanDurumuSatir.a_gol = attigiGol;
                puanDurumuSatir.y_gol = yedigiGol;
                puanDurumuSatir.averaj = averaj;
                puanDurumuSatir.puan = puan;
                puanDurumuSatir.oynadigi_mac = macSayisi;
                listeTmp.Add(puanDurumuSatir);
            }
            listeTmp = listeTmp.OrderByDescending(item => item.puan).ToList();
            foreach(var item in listeTmp)
            {
                puanDurumuListe.Add(item);
            }

        }
           
        public ObservableCollection<PuanDurumuSatir> TakimlariSirala()
        {
            
            for (int i = 0; i < PuanDurumuListe.Count; i++)
            {
                int sira = PuanDurumuListe.OrderByDescending(item => item.puan).ToList().IndexOf(PuanDurumuListe[i]) + 1;
                PuanDurumuListe[i].sira = sira;
            }
            int sayi = PuanDurumuListe.Count();
            return PuanDurumuListe;
        }

//Property Changed

        




    }
}
