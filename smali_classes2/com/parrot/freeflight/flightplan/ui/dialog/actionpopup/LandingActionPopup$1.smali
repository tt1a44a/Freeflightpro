.class Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;
.super Ljava/lang/Object;
.source "LandingActionPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->initLandingButton(Landroid/content/Context;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;

.field final synthetic val$wantedLandingMode:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;

    iput p2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;->val$wantedLandingMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;

    iget-object v0, v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;->mOnObjectActionPopupListener:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnPointPopupActionListener;

    check-cast v0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;

    iget v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup$1;->val$wantedLandingMode:I

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnLandingPopupActionListener;->onLandingModeClick(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/LandingActionPopup;I)V

    .line 41
    return-void
.end method
