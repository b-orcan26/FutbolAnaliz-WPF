

using System.Windows;
using WpfAppExample1.ViewModels;

namespace WpfAppExample1
{

    public partial class MainWindow : Window 
    {
       
        public MainWindow()
        {
            this.Visibility = Visibility.Collapsed;
            InitializeComponent();
            LigViewModel ligVM = new LigViewModel();
            this.DataContext = ligVM;
        }



        // Simge durumuna küçült ve kapat butonları
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
            
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }


    }
}
