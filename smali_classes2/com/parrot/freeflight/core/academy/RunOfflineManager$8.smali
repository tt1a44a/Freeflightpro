.class Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;
.super Ljava/lang/Object;
.source "RunOfflineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/RunOfflineManager;->start()V
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
    .line 344
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->getUserProfile()Lcom/parrot/freeflight/core/authentication/model/UserProfile;

    move-result-object v1

    iget-object v0, v1, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    .line 348
    .local v0, "savedUserName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$000(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/academy/RunCollection;->setUserName(Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->access$1500(Lcom/parrot/freeflight/core/academy/RunOfflineManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 350
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunOfflineManager$8;->this$0:Lcom/parrot/freeflight/core/academy/RunOfflineManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->checkAcademyServer()V

    .line 351
    return-void
.end method
