using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using WpfAppExample1.Entity;

namespace WpfAppExample1.ViewModels
{
    class UcLigDetayViewModel : BaseViewModel
    {
        Model1 veritabani;
        int lig_id;
        int _toplamGol;
        double _ortalamaGol;

        Takim _enGolcuTk;
        Takim _enAzYiyenTk;

        Takim _icSahaEnBasariliTk;
        Takim _depEnBasariliTk;

        // Constructors

        public UcLigDetayViewModel(int _ligid=1)
        {
            lig_id = _ligid;
            veritabani = new Model1();
            ToplamGol = toplamGolBul(_ligid);
            OrtalamaGol = ortalamaGolHesapla(_ligid,ToplamGol);
            EnGolcuTakim = enGolcuTakimBul(_ligid);
            EnAzYiyenTakim = enAzYiyenTakimBul(_ligid);
            IcSahaEnBasariliTakim = icSahaEnBasariliTakimBul(_ligid);
            DepEnBasariliTakim = disSahaEnBasariliTakimBul(_ligid);
            
        }

        public UcLigDetayViewModel()
        {

        }

        // Veritabani İslemleri

        public Takim enGolcuTakimBul(int lig_id)
        {
            List<Takim> takimList = veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x).ToList();
            int gol=0;
            Takim engolcuTakim=null;

            for(int i=0; i<takimList.Count; i++)
            {
                Takim tk = takimList[i];
                int evGol = veritabani.Macs.Where(z => z.evTk_id == tk.takim_id).Sum(z => z.evms_Sk);
                int depGol = veritabani.Macs.Where(x => x.depTk_id == tk.takim_id).Sum(x => x.depms_Sk);
                int toplamGol = evGol + depGol;
                if (gol < toplamGol)
                {
                    gol = toplamGol;
                    engolcuTakim = takimList[i];
                }
            }

            return engolcuTakim;
        }

        public Takim enAzYiyenTakimBul(int lig_id)
        {
            List<Takim> takimList = veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x).ToList();
            int gol=1000;
            Takim enAzYiyen = null;

            for(int i=0; i<takimList.Count; i++)
            {
                Takim tk = takimList[i];
                int evdeYedigiGol = veritabani.Macs.Where(x => x.evTk_id == tk.takim_id).Sum(x => x.depms_Sk);
                int depYedigiGol = veritabani.Macs.Where(x => x.depTk_id == tk.takim_id).Sum(x => x.evms_Sk);
                int yedigiToplamGol = evdeYedigiGol + depYedigiGol;
                if (yedigiToplamGol<gol)
                {
                    gol = yedigiToplamGol;
                    enAzYiyen = takimList[i];
                }
            }
            return enAzYiyen;
        }

        public Takim icSahaEnBasariliTakimBul(int lig_id)
        {
            int puan = 0;
            Takim icEnBasTakim = null;
            List<Takim> takimList = veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x).ToList();

            for(int i=0; i<takimList.Count; i++)
            {
                int toplamPuan = 0;
                Takim tk = takimList[i];
                List<Mac> macList = veritabani.Macs.Where(x => x.evTk_id == tk.takim_id).Select(x => x).ToList();
                for(int j=0; j<macList.Count; j++)
                {
                    if (macList[j].evms_Sk > macList[j].depms_Sk)
                    {
                        toplamPuan += 3;
                    }
                    else if (macList[j].evms_Sk == macList[j].depms_Sk){
                        toplamPuan += 1;
                    }
                }

                if (toplamPuan > puan)
                {
                    puan = toplamPuan;
                    icEnBasTakim = takimList[i];
                }
            }

            return icEnBasTakim;
        }

        public Takim disSahaEnBasariliTakimBul(int lig_id)
        {
            int puan = 0;
            Takim disEnBasTakim = null;
            List<Takim> takimList = veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x).ToList();

            for (int i = 0; i < takimList.Count; i++)
            {
                int toplamPuan = 0;
                Takim tk = takimList[i];
                List<Mac> macList = veritabani.Macs.Where(x => x.evTk_id == tk.takim_id).Select(x => x).ToList();
                for (int j = 0; j < macList.Count; j++)
                {
                    if (macList[j].evms_Sk < macList[j].depms_Sk)
                    {
                        toplamPuan += 3;
                    }
                    else if (macList[j].evms_Sk == macList[j].depms_Sk){
                        toplamPuan += 1;
                    }
                }

                if (toplamPuan > puan)
                {
                    puan = toplamPuan;
                    disEnBasTakim = takimList[i];
                }
            }

            return disEnBasTakim;
        }

        public int toplamGolBul(int lig_id)
        {
            int toplam = 0;
            List<Takim> takimList = veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x).ToList();
            

            for(int i=0; i<takimList.Count; i++)
            {
                Takim tk = takimList[i];
                List<Mac> evdekimacList = (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id select mac).ToList();
                List<Mac> depmacList = (from mac in veritabani.Macs where mac.depTk_id == tk.takim_id select mac).ToList();
                int evGol = evdekimacList.Sum(x=>x.evms_Sk);
                int depGol = depmacList.Sum(x => x.depms_Sk);
                int attigiGol = evGol + depGol;
                toplam += attigiGol;
            }
            return toplam;
        }

        public double ortalamaGolHesapla(int lig_id,int toplamGol)
        {
            List<Takim> takimList = veritabani.Takims.Where(x => x.lig_id == lig_id).Select(x => x).ToList();
            int macSayisi = 0;
            for(int i=0; i<takimList.Count; i++)
            {
                Takim tk = takimList[i];
                macSayisi += (from mac in veritabani.Macs where mac.evTk_id == tk.takim_id || mac.depTk_id == tk.takim_id select mac).ToList().Count();
            }
            
            double _ortalamaGol = Convert.ToDouble(toplamGol) / Convert.ToDouble(macSayisi);
            return Math.Round(_ortalamaGol,2);
        }



        //     Properties

        public int ToplamGol
        {
            get
            {
                return _toplamGol;
            }
            set
            {
                _toplamGol = value;
            }
        }

        public double OrtalamaGol
        {
            get
            {
                return _ortalamaGol;
            }
            set
            {
                _ortalamaGol = value;
            }
        }

        public Takim EnGolcuTakim
        {
            get
            {
                return _enGolcuTk;
            }
            set
            {
                _enGolcuTk = value;
            }
        }

        public Takim EnAzYiyenTakim
        {
            get
            {
                return _enAzYiyenTk;
            }
            set
            {
                _enAzYiyenTk = value;
            }
        }

        public Takim IcSahaEnBasariliTakim
        {
            get
            {
                return _icSahaEnBasariliTk;
            }
            set
            {
                _icSahaEnBasariliTk = value;
            }
        }

        public Takim DepEnBasariliTakim
        {
            get
            {
                return _depEnBasariliTk;
            }
            set
            {
                _depEnBasariliTk = value;
            }
        }

    }
}
