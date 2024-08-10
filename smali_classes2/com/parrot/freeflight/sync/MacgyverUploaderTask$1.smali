.class Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;
.super Ljava/lang/Object;
.source "MacgyverUploaderTask.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/sync/MacgyverUploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;->this$0:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 3
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 70
    const-string v0, "MacgyverUploaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInternetStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;->this$0:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->access$000(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;->this$0:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->access$100(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAuthenticationManager()Lcom/parrot/freeflight/core/authentication/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/AuthenticationManager;->isDataSharingAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;->this$0:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->access$100(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->resume()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    .line 79
    :cond_0
    :goto_0
    monitor-exit v1

    .line 80
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask$1;->this$0:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-static {v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->access$100(Lcom/parrot/freeflight/sync/MacgyverUploaderTask;)Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->pause()Lcom/parrot/arsdk/arsync/ARSYNC_ERROR_ENUM;

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
