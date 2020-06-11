using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace WpfAppExample1.Converters
{
    public class ByteArrayToBitmapImageConverter : IValueConverter
    {
        public BitmapImage ConvertByteArrayToBitMapImage(byte[] imageByteArray)
        {
            Stream streamObj = new MemoryStream(imageByteArray);
            BitmapImage bitObj = new BitmapImage();
            bitObj.BeginInit();
            bitObj.StreamSource = streamObj;
            bitObj.EndInit();
            return bitObj;
        }



        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            BitmapImage img = new BitmapImage();
            if (value != null)
            {
                img = this.ConvertByteArrayToBitMapImage(value as byte[]);
            }
            return img;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return null;
        }
    }
}
