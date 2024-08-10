.class Lcom/parrot/freeflight/core/academy/AcademyManager$3;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthGetProfileResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;)V
    .locals 4
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .param p2, "profile"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyProfile;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 205
    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne p1, v1, :cond_0

    .line 206
    move-object v0, p2

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$3;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1200(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    .local v0, "prof":Ljava/lang/Object;
    goto :goto_0
.end method
