.class Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;
.super Ljava/lang/Object;
.source "LineActionPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->initUi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;->onConstantCapClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;->access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLinePopupActionListener;->onProgressiveCapClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LineActionPopup;)V

    goto :goto_0
.end method
