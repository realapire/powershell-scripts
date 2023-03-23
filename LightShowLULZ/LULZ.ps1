Add-Type -TypeDefinition @"
using System.Runtime.InteropServices;
public static class DisplayFlicker {
  [DllImport("user32.dll")]
  public static extern int SendMessage(int hWnd, uint Msg, int wParam, int lParam);
}
"@

$hwnd = (Get-Process -Name explorer | Select-Object -First 1).MainWindowHandle.ToInt32()
while ($true) {
  [DisplayFlicker]::SendMessage($hwnd, 0x0112, 0xF170, 2)
}