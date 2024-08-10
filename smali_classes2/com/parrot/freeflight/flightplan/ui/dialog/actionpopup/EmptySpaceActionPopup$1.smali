.class Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;
.super Ljava/lang/Object;
.source "EmptySpaceActionPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->initUi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->access$000(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;->onOpenClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;->onCloseClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)V

    goto :goto_0
.end method
