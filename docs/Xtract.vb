Dim MyProcess As New Process()
MyProcess.StartInfo.FileName = tb_main.Text & "exiso.exe"
MyProcess.StartInfo.Arguments = " -x -s"
MyProcess.Start() 'Startet den Prozess
Do
ProgressBar1.Style = Form.ProgressBarStyle.Blocks
Loop Until MyProcess.HasExited
