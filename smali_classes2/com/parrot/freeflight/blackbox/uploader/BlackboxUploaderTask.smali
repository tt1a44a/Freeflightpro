.class public Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;
.super Landroid/os/AsyncTask;
.source "BlackboxUploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAirTrafficUploader:Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFileToUpload:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUploadListener:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;Ljava/io/File;)V
    .locals 3
    .param p1, "uploadListener"    # Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fileToUpload"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mUploadListener:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;

    .line 24
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mFileToUpload:Ljava/io/File;

    .line 25
    new-instance v0, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->getBlackboxUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mAirTrafficUploader:Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mAirTrafficUploader:Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->uploadFile()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBlackboxUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Lcom/parrot/freeflight/core/airtraffic/AirTrafficUploader;->getMD5FromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v0, ""

    .line 59
    :cond_0
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "statusResponse"    # Ljava/lang/Integer;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mUploadListener:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mFileToUpload:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;->onFileUploaded(Ljava/io/File;)V

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mUploadListener:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mFileToUpload:Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;->onUploadError(Ljava/io/File;Z)V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mUploadListener:Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;

    iget-object v1, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->mFileToUpload:Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;->onUploadError(Ljava/io/File;Z)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
