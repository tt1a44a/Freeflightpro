.class Lcom/parrot/freeflight/update/view/UpdateListController$2;
.super Ljava/lang/Object;
.source "UpdateListController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/ModelStore$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/view/UpdateListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/view/UpdateListController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/view/UpdateListController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/view/UpdateListController;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModelChange(Lcom/parrot/freeflight/core/model/Model;)V
    .locals 2
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$102(Lcom/parrot/freeflight/update/view/UpdateListController;Z)Z

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$200(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$200(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$300(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    check-cast p1, Lcom/parrot/freeflight/core/model/DroneModel;

    .end local p1    # "model":Lcom/parrot/freeflight/core/model/Model;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$202(Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/core/model/DroneModel;)Lcom/parrot/freeflight/core/model/DroneModel;

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$200(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$200(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/update/view/UpdateListController$2;->this$0:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-static {v1}, Lcom/parrot/freeflight/update/view/UpdateListController;->access$300(Lcom/parrot/freeflight/update/view/UpdateListController;)Lcom/parrot/freeflight/core/model/Model$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DroneModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 103
    :cond_1
    return-void
.end method
