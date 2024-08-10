.class Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;
.super Ljava/lang/Object;
.source "PointActionPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->initUi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    .prologue
    .line 50
    .local p0, "this":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;, "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    .local p0, "this":Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;, "Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;->mOnObjectActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;->onEditClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/PointActionPopup;)V

    .line 54
    return-void
.end method
