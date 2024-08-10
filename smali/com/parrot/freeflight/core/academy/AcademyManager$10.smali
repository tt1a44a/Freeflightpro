.class Lcom/parrot/freeflight/core/academy/AcademyManager$10;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetPilotByUsernameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;->requestPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field final synthetic val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthGetPilotByUsernameResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;)V
    .locals 4
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .param p2, "model"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 506
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    iput-object p2, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->result:Ljava/lang/Object;

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$10;->val$holder:Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;

    iput-object p1, v0, Lcom/parrot/freeflight/core/academy/AcademyManager$HandlerHolder;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    goto :goto_0
.end method
