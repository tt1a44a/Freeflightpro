.class Lcom/parrot/freeflight/flightplan/ui/MapUIController$25$1;
.super Ljava/lang/Object;
.source "MapUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;->onSpeedBridle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;

.field final synthetic val$bridleSnackbar:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25$1;->this$1:Lcom/parrot/freeflight/flightplan/ui/MapUIController$25;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25$1;->val$bridleSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/MapUIController$25$1;->val$bridleSnackbar:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    .line 1457
    return-void
.end method
