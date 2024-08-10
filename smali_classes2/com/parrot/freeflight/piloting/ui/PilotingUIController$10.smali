.class Lcom/parrot/freeflight/piloting/ui/PilotingUIController$10;
.super Ljava/lang/Object;
.source "PilotingUIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->createCalibrationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/PilotingUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    if-eq v0, p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController$10;->this$0:Lcom/parrot/freeflight/piloting/ui/PilotingUIController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/parrot/freeflight/piloting/ui/PilotingUIController;->mCalibrationDialog:Landroid/support/v7/app/AlertDialog;

    .line 552
    :cond_0
    return-void
.end method
