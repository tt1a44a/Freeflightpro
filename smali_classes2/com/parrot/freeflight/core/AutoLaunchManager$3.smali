.class Lcom/parrot/freeflight/core/AutoLaunchManager$3;
.super Ljava/lang/Object;
.source "AutoLaunchManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->getFlyingState()I

    move-result v1

    .line 124
    .local v1, "droneFlyingState":I
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/core/model/DroneModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DroneModel;->connectionProtocolEnded()Z

    move-result v0

    .line 125
    .local v0, "connectionProtocolEnded":Z
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$300(Lcom/parrot/freeflight/core/AutoLaunchManager;)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$400(Lcom/parrot/freeflight/core/AutoLaunchManager;)Z

    move-result v2

    if-eq v2, v0, :cond_1

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$302(Lcom/parrot/freeflight/core/AutoLaunchManager;I)I

    .line 127
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$402(Lcom/parrot/freeflight/core/AutoLaunchManager;Z)Z

    .line 131
    iget-object v2, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$200(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    .line 134
    .end local v0    # "connectionProtocolEnded":Z
    .end local v1    # "droneFlyingState":I
    :cond_1
    return-void
.end method
