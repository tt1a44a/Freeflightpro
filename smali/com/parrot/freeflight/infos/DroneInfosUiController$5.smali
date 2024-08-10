.class Lcom/parrot/freeflight/infos/DroneInfosUiController$5;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;->beepMyDrone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertSoundState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DroneModel;->stopAlertSound()V

    .line 361
    :cond_0
    return-void
.end method
