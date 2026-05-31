require "import"
import "android.widget.*"
import "android.view.*"
import "android.content.Intent"
import "android.net.Uri"

local dlg = LuaDialog()
dlg.setTitle("_CSRwithMK_")

local main_view = {
  ViewAnimator;
  id="animator";
  {
    LinearLayout; -- Index 0: Main Menu
    orientation = "vertical";
    padding = "30dp";
    {
      TextView;
      text = "Developer Raja Murtaza";
      textSize = "18sp";
      layout_marginBottom = "15dp";
      gravity = "center";
    };
    {
      Button;
      text = "About";
      textSize = "16sp";
      layout_marginBottom = "15dp";
      onClick = function()
        animator.setDisplayedChild(1) -- About screen par jao
      end;
    };
    {
      Button;
      text = "Exit";
      textSize = "16sp";
      onClick = function()
        dlg.dismiss()
      end;
    };
  };
  {
    LinearLayout; -- Index 1: About Menu
    orientation = "vertical";
    padding = "30dp";
    {
      Button;
      text = "Contact me on WhatsApp";
      textSize = "16sp";
      layout_marginBottom = "15dp";
      onClick = function()
        local url = "https://wa.me/923094900861"
        local intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
        service.startActivity(intent)
      end;
    };
    {
      Button;
      text = "Go Back";
      textSize = "16sp";
      onClick = function()
        animator.setDisplayedChild(0) -- Wapas Main screen par jao
      end;
    };
  };
}

dlg.setView(loadlayout(main_view))
dlg.show()