.class Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;-><init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

.field final synthetic val$this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;Lcom/parrot/freeflight/infos/DroneInfosUiController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;->this$1:Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;->val$this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;->this$1:Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder$1;->this$1:Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/infos/DroneInfosUiController$DroneInfosUpdateViewHolder;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/update/UpdateListActivity;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 709
    return-void
.end method
