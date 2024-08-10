.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->loadLocalData()V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$400(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager$Listener;->onChange()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$600(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$700(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$800(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$900(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/AcademyService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1100(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1200(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$4;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1300(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)V

    .line 156
    :cond_2
    return-void
.end method
