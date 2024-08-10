.class Lcom/parrot/freeflight/core/model/DroneModel$3;
.super Ljava/lang/Object;
.source "DroneModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/model/DroneModel;->onNewTemporaryAlert(III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DroneModel;

.field final synthetic val$criticalityLevel:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/DroneModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$3;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    iput p2, p0, Lcom/parrot/freeflight/core/model/DroneModel$3;->val$criticalityLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$3;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    iget-object v0, v0, Lcom/parrot/freeflight/core/model/DroneModel;->mAlertContainer:Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getTemporaryAlert()Lcom/parrot/freeflight/piloting/alert/Alert;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x104000e

    iget v3, p0, Lcom/parrot/freeflight/core/model/DroneModel$3;->val$criticalityLevel:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(III)Z

    .line 1809
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$3;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->notifyListener()V

    .line 1810
    return-void
.end method
