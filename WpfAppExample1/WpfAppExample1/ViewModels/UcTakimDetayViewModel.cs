using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfAppExample1.Entity;
using WpfAppExample1.Models;

namespace WpfAppExample1.ViewModels
{
     class UcTakimDetayViewModel : BaseViewModel
    {
        
        private ObservableCollection<IcDisPerformansSatir> _icSahaPerformansi;
        private  ObservableCollection<IcDisPerformansSatir> _disSahaPerformansi;
        public ObservableCollection<Son5MacSatir> _son5MacListesi;
        public Takim _myTakim;
        Model1 veritabani=new Model1();
        List<KeyValuePair<int, int>> _attigiSeries;
        List<KeyValuePair<int, int>> _maclarindakiToplamGol;
        List<KeyValuePair<int, int>> _maclarindakiAttigiIyGol;
        List<KeyValuePair<int, int>> _maclarindakiYedigiIyGol;
        List<KeyValuePair<int, int>> _yedigiSeries;
        List<List<KeyValuePair<int, int>>> chartDataSource;
        List<List<KeyValuePair<int, int>>> chartDataSourceIy;
        



        //      Constructor
        public UcTakimDetayViewModel(int takim_id)
        {
            
            init(takim_id);          
        }

        public UcTakimDetayViewModel()
        {
        }

        //      Properties

        public IEnumerable<KeyValuePair<string, int>> LoadPieChartDataUcBucukAu
        {
            get
            {
                int ustSayisi = UcBucukUstSayisi();
                int altSayisi = UcBucukAltSayisi();
                yield return new KeyValuePair<string, int>("alt", altSayisi);
                yield return new KeyValuePair<string, int>("ust", ustSayisi);
            }
        }

        public IEnumerable<KeyValuePair<string, int>> LoadPieChartDataIkıBucukAu
        {
            get
            {
                int ustSayisi = IkıBucukUstSayisi();
                int altSayisi = IkıBucukAltSayisi();
                yield return new KeyValuePair<string, int>("alt", altSayisi);
                yield return new KeyValuePair<string, int>("ust", ustSayisi);
            }
        }

        public IEnumerable<KeyValuePair<string, int>>  LoadPieChartDataBirBucukAu
        {
            get
            {
                int ustSayisi = BirBucukUstSayisi();
                int altSayisi = BirBucukAltSayisi();
                yield return new KeyValuePair<string, int>("alt", altSayisi);
                yield return new KeyValuePair<string, int>("ust", ustSayisi);
            }
        }

        public List<KeyValuePair<int,int>> MaclarindakiAttigiIyGol
        {
            get
            {
                return _maclarindakiAttigiIyGol;
            }
            set
            {
                _maclarindakiAttigiIyGol = value;
            }
        }
        public List<KeyValuePair<int,int>> MaclarindakiYedigiIyGol
        {
            get
            {
                return _maclarindakiYedigiIyGol;
            }
            set
            {
                _maclarindakiYedigiIyGol = value;
            }
        }

        public List<KeyValuePair<int,int>> MaclarindakiToplamGol
        {
            get
            {
                return _maclarindakiToplamGol;
            }
            set
            {
                _maclarindakiToplamGol = value;
            }
        }

        public List<KeyValuePair<int,int>> AttigiSeries
        {
            get
            {
                return _attigiSeries;
            }
            set
            {
                _attigiSeries = value;
            }
        }
        public List<KeyValuePair<int, int>> YedigiSeries
        {
            get
            {
                return _yedigiSeries;
            }
            set
            {
                _yedigiSeries = value;
            }
        }

        public List<List<KeyValuePair<int, int>>> ChartDataSourceIy
        {
            get
            {
                return chartDataSourceIy;
            }
            set
            {
                chartDataSourceIy = value;
            }
        }

        public List<List<KeyValuePair<int, int>>> ChartDataSource
        {
            get
            {
                return chartDataSource;
            }
            set
            {
                chartDataSource = value;
            }
        }

        public ObservableCollection<Son5MacSatir> Son5MacListesi
        {
            get
            {
                return _son5MacListesi;
            }
            set
            {
                _son5MacListesi = value;
            }
        }
        public ObservableCollection<IcDisPerformansSatir> IcSahaPerformansi
        {
            get
            {
                return _icSahaPerformansi;
            }
            set
            {
                _icSahaPerformansi = value;
            }
        }
        public ObservableCollection<IcDisPerformansSatir> DisSahaPerformansi
        {
            get
            {
                return _disSahaPerformansi;
            }
            set
            {
                _disSahaPerformansi = value;
            }
        }
         Takim MyTakim
        {
            get
            {
                return _myTakim;
            }
            set
            {
                
                _myTakim = value;                
            }
        }



        //      İnit

        private void init(int takim_id)
        {
            
            TakimAta(takim_id);

            _attigiSeries = new List<KeyValuePair<int, int>>();
            _yedigiSeries = new List<KeyValuePair<int, int>>();
            _maclarindakiAttigiIyGol = new List<KeyValuePair<int, int>>();
            _maclarindakiYedigiIyGol = new List<KeyValuePair<int, int>>();
            _icSahaPerformansi = new ObservableCollection<IcDisPerformansSatir>();
            _disSahaPerformansi = new ObservableCollection<IcDisPerformansSatir>();
            _maclarindakiToplamGol = new List<KeyValuePair<int, int>>();
            _maclarindakiAttigiIyGol = new List<KeyValuePair<int, int>>();
            ChartDataSource = new List<List<KeyValuePair<int, int>>>();
            ChartDataSourceIy = new List<List<KeyValuePair<int, int>>>();

            _son5MacListesi = new ObservableCollection<Son5MacSatir>();

            Son5MacListesi = Son5MacListesiGetir(takim_id, Son5MacListesi);

            AttigiYedigiGolAta(takim_id);
            ChartDataSource.Add(AttigiSeries);
            ChartDataSource.Add(YedigiSeries);

            IcSahaPerformansiAta(takim_id);
            DisSahaPerformansiAta(takim_id);

            MaclarindakiToplamGolAta(takim_id);

            AttigiYedigiGolAtaIy(takim_id);
            ChartDataSourceIy.Add(MaclarindakiAttigiIyGol);
            ChartDataSourceIy.Add(MaclarindakiYedigiIyGol);
        }



        //      Veritabani İslemleri

        private int UcBucukUstSayisi()
        {
            int ustSayisi = 0;
            for (int i = 0; i < MaclarindakiToplamGol.Count; i++)
            {
                if (MaclarindakiToplamGol[i].Value > 3)
                {
                    ustSayisi += 1;
                }
            }
            return ustSayisi;
        }

        private int UcBucukAltSayisi()
        {
            int altSayisi = 0;
            for (int i = 0; i < MaclarindakiToplamGol.Count; i++)
            {
                if (MaclarindakiToplamGol[i].Value <= 3)
                {
                    altSayisi += 1;
                }
            }
            return altSayisi;
        }


        private int BirBucukUstSayisi()
        {
            int ustSayisi = 0;
            for (int i = 0; i < MaclarindakiToplamGol.Count; i++)
            {
                if (MaclarindakiToplamGol[i].Value > 1)
                {
                    ustSayisi += 1;
                }
            }
            return ustSayisi;
        }

        private int BirBucukAltSayisi()
        {
            int altSayisi = 0;
            for (int i = 0; i < MaclarindakiToplamGol.Count; i++)
            {
                if (MaclarindakiToplamGol[i].Value <= 1)
                {
                    altSayisi += 1;
                }
            }
            return altSayisi;
        }

        private int IkıBucukUstSayisi()
        {
            int ustSayisi = 0;
            for(int i=0; i<MaclarindakiToplamGol.Count; i++)
            {
                if (MaclarindakiToplamGol[i].Value > 2)
                {
                    ustSayisi += 1;
                }
            }
            return ustSayisi;
        }
        private int IkıBucukAltSayisi()
        {
            int altSayisi = 0;
            for (int i = 0; i < MaclarindakiToplamGol.Count; i++)
            {
                if (MaclarindakiToplamGol[i].Value <= 2)
                {
                    altSayisi += 1;
                }
            }
            return altSayisi;
        }

        private void AttigiYedigiGolAtaIy(int takim_id)
        {
            Takim tk = (Takim)veritabani.Takims.Where(x => x.takim_id == takim_id).Select(x => x).FirstOrDefault();

            List<Mac> maclist = veritabani.Macs.Where(x => x.evTk_id == takim_id || x.depTk_id == takim_id).Select(x => x).OrderBy(x => x.mac_tarih).ToList();

            for (int i = 0; i < maclist.Count; i++)
            {
                int attigiGol = 0;
                int yedigiGol = 0;

                if (maclist[i].evTk_id == takim_id)
                {
                    attigiGol = maclist[i].eviy_Sk;
                    yedigiGol = maclist[i].depiy_Sk;
                }
                else if (maclist[i].depTk_id == takim_id)
                {
                    attigiGol = maclist[i].depiy_Sk;
                    yedigiGol = maclist[i].eviy_Sk;
                }
                MaclarindakiAttigiIyGol.Add(new KeyValuePair<int, int>(i, attigiGol));
                MaclarindakiYedigiIyGol.Add(new KeyValuePair<int, int>(i, yedigiGol));
            }
        }

        private void MaclarindakiToplamGolAta (int takim_id)
        {
            List<Mac> macList = veritabani.Macs.Where(x => x.evTk_id == takim_id || x.depTk_id == takim_id).Select(x => x).ToList();
            for(int i=0; i<macList.Count; i++)
            {
                int toplamGol = macList[i].evms_Sk + macList[i].depms_Sk;
                MaclarindakiToplamGol.Add(new KeyValuePair<int, int>(i, toplamGol));
            }
        }

        private void AttigiYedigiGolAta(int takim_id)
        {
            Takim tk=(Takim)veritabani.Takims.Where(x => x.takim_id == takim_id).Select(x => x).FirstOrDefault();
            
            List<Mac> maclist = veritabani.Macs.Where(x => x.evTk_id == takim_id || x.depTk_id == takim_id).Select(x => x).OrderBy(x=>x.mac_tarih).ToList();

            for(int i=0; i<maclist.Count; i++)
            {
                int attigiGol = 0;
                int yedigiGol = 0;

                if (maclist[i].evTk_id == takim_id)
                {
                    attigiGol = maclist[i].evms_Sk;
                    yedigiGol = maclist[i].depms_Sk;
                }
                else if (maclist[i].depTk_id == takim_id)
                {
                    attigiGol = maclist[i].depms_Sk;
                    yedigiGol = maclist[i].evms_Sk;
                }
                AttigiSeries.Add(new KeyValuePair<int, int>(i, attigiGol));
                YedigiSeries.Add(new KeyValuePair<int, int>(i, yedigiGol));
            }
        }

        private void TakimAta(int takim_id)
        {
            MyTakim =(Takim) veritabani.Takims.Where(x => x.takim_id == takim_id).Select(x=>x).FirstOrDefault();
        }

        private ObservableCollection<Son5MacSatir> Son5MacListesiGetir(int takim_id, ObservableCollection<Son5MacSatir> liste)
        {
            List<Mac> maclistesi = new List<Mac>();
            maclistesi = (from mac in veritabani.Macs where mac.evTk_id == takim_id || mac.depTk_id == takim_id select mac).OrderByDescending(x => x.mac_tarih).Take(5).ToList();
            for (int i = 0; i < maclistesi.Count; i++)
            {
                Son5MacSatir satir = new Son5MacSatir();
                int takim_id1 = maclistesi[i].evTk_id;
                int takim_id2 = maclistesi[i].depTk_id;
                int eviy_sk = maclistesi[i].eviy_Sk;
                int depiy_sk = maclistesi[i].depiy_Sk;
                int evms_sk = maclistesi[i].evms_Sk;
                int depms_sk = maclistesi[i].depms_Sk;
                string takim_adi1 = (from tk in veritabani.Takims where tk.takim_id == takim_id1 select tk.takim_ad).First();
                string takim_adi2 = (from tk in veritabani.Takims where tk.takim_id == takim_id2 select tk.takim_ad).First();

                satir.evSahibi = takim_adi1;
                satir.deplasman = takim_adi2;
                satir.eviy_sk = eviy_sk;
                satir.depiy_sk = depiy_sk;
                satir.evms_sk = evms_sk;
                satir.depms_sk = depms_sk;
                liste.Add(satir);
            }
            return liste;
        }

        private void IcSahaPerformansiAta(int takim_id)
        {
            int galibiyetSayisi = 0;
            int beraberlikSayisi = 0;
            int maglubiyetSayisi = 0;
            int attigiGolSayisi = 0;
            int yedigiGolSayisi = 0;
            
            List<Mac> maclar = veritabani.Macs.Where(x => x.evTk_id == takim_id).Select(x => x).ToList();
            
            int oynadigiMacSayisi = maclar.Count();

            for(int i=0; i<maclar.Count; i++)
            {

                if (maclar[i].evms_Sk > maclar[i].depms_Sk)
                {
                    galibiyetSayisi += 1;
                }
                else if(maclar[i].evms_Sk < maclar[i].depms_Sk)
                {
                    maglubiyetSayisi += 1;
                }
                else
                {
                    beraberlikSayisi += 1;
                }
                attigiGolSayisi += maclar[i].evms_Sk;
                yedigiGolSayisi += maclar[i].depms_Sk;
            }
            IcDisPerformansSatir satir = new IcDisPerformansSatir();
            satir.AttigiGol = attigiGolSayisi;
            satir.YedigiGol = yedigiGolSayisi;
            satir.OynadigiMacSayisi = oynadigiMacSayisi;
            satir.BeraberlikSayisi = beraberlikSayisi;
            satir.MaglubiyetSayisi = maglubiyetSayisi;
            satir.GalibiyetSayisi = galibiyetSayisi;
            IcSahaPerformansi.Add(satir);
        }

        private void DisSahaPerformansiAta(int takim_id)
        {
            int galibiyetSayisi = 0;
            int beraberlikSayisi = 0;
            int maglubiyetSayisi = 0;
            int attigiGolSayisi = 0;
            int yedigiGolSayisi = 0;

            List<Mac> maclar = veritabani.Macs.Where(x => x.depTk_id == takim_id).Select(x => x).ToList();

            int oynadigiMacSayisi = maclar.Count();

            for (int i = 0; i < maclar.Count; i++)
            {

                if (maclar[i].evms_Sk < maclar[i].depms_Sk)
                {
                    galibiyetSayisi += 1;
                }
                else if (maclar[i].evms_Sk > maclar[i].depms_Sk)
                {
                    maglubiyetSayisi += 1;
                }
                else
                {
                    beraberlikSayisi += 1;
                }
                attigiGolSayisi += maclar[i].depms_Sk;
                yedigiGolSayisi += maclar[i].evms_Sk;
            }
            IcDisPerformansSatir satir = new IcDisPerformansSatir();
            satir.AttigiGol = attigiGolSayisi;
            satir.YedigiGol = yedigiGolSayisi;
            satir.OynadigiMacSayisi = oynadigiMacSayisi;
            satir.BeraberlikSayisi = beraberlikSayisi;
            satir.MaglubiyetSayisi = maglubiyetSayisi;
            satir.GalibiyetSayisi = galibiyetSayisi;
            DisSahaPerformansi.Add(satir);
        }

        private void Temizle()
        {
            MyTakim = null;
            Son5MacListesi.Clear();
            IcSahaPerformansi = null;
            DisSahaPerformansi = null;
        }


    }
}
