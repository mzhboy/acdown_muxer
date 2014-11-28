acdown_muxer
============
[AcDown](http://acdown.codeplex.com/) 默认下载完成使用重编码的方式来合并文件,文件较大的情况下会比较慢.

一般情况下下载的分段文件都是可以用[ffmpeg](http://ffmpeg.zeranoe.com/builds/)直接合并的，可以极大缩短合并时间

这里完成一个批处理，把`acdown-mux-ffmpeg.cmd`放入AcDown下载目录的根文件夹比如下面

    C:\AcDown>dir
     驱动器 C 中的卷是 Windows8.1
     卷的序列号是 A85F-9AC4

     C:\AcDown 的目录

    2014/11/28  10:17    <DIR>          .
    2014/11/28  10:17    <DIR>          ..
    2014/11/28  10:06               343 acdown-mux-ffmpeg.cmd
    2014/11/26  17:54         1,261,568 AcDown.exe
    2014/11/28  10:07    <DIR>          acdown_muxer
    2014/11/28  09:49    <DIR>          [神曲欣赏]KEY社三部曲，超级纠结催泪治愈的神曲对决
    2014/11/28  09:49    <DIR>          【告别泪水】CLANNAD—梦の町 13光玉の物语

这样，直接运行`acdown-mux-ffmpeg.cmd`即可
生成的mp4文件在下载完的文件夹