.class Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;
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
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->access$100(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    iget-object v2, p0, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup$2;->this$0:Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;

    invoke-static {v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;->access$200(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/OnEmptySpacePopupActionListener;->onAddPoi(Lcom/parrot/freeflight/flightplan/ui/dialog/actionpopup/EmptySpaceActionPopup;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 47
    return-void
.end method
