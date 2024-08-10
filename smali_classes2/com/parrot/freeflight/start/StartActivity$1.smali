.class Lcom/parrot/freeflight/start/StartActivity$1;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/start/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 6
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/start/StartActivity;->access$600(Lcom/parrot/freeflight/start/StartActivity;JJ)V

    .line 136
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$500(Lcom/parrot/freeflight/start/StartActivity;)V

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$400(Lcom/parrot/freeflight/start/StartActivity;)Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/start/StartActivity;->access$300(Lcom/parrot/freeflight/start/StartActivity;)Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->extractObbEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$000(Lcom/parrot/freeflight/start/StartActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/start/StartActivity;->access$102(Lcom/parrot/freeflight/start/StartActivity;Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$100(Lcom/parrot/freeflight/start/StartActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$100(Lcom/parrot/freeflight/start/StartActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/start/StartActivity;->access$200(Lcom/parrot/freeflight/start/StartActivity;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$1;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$100(Lcom/parrot/freeflight/start/StartActivity;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestDownloadStatus()V

    .line 107
    return-void
.end method
