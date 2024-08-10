.class Lcom/parrot/freeflight/infos/DroneInfosUiController$7;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;->flatTrim()V
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
    .line 378
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$7;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$7;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$7;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$7;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/infos/flattrim/DroneFlatTrimActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 384
    :cond_0
    return-void
.end method
