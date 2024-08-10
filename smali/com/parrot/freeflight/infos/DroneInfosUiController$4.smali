.class Lcom/parrot/freeflight/infos/DroneInfosUiController$4;
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
    .line 337
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v1, v1, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v1, v1, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertSoundState()I

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v1, v1, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DroneModel;->startAlertSound()V

    .line 343
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$200(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 344
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$4;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$200(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 345
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 346
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 350
    .end local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-void
.end method
