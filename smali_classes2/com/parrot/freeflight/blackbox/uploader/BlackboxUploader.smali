.class public Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;
.super Ljava/lang/Object;
.source "BlackboxUploader.java"

# interfaces
.implements Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public onFileUploaded(Ljava/io/File;)V
    .locals 0
    .param p1, "uploadedFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 32
    return-void
.end method

.method public onUploadError(Ljava/io/File;Z)V
    .locals 0
    .param p1, "uploadedFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dismiss"    # Z

    .prologue
    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    :cond_0
    return-void
.end method

.method public tryUploadingFiles()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 20
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "Blackbox"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .local v0, "blackBoxDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 22
    .local v3, "files":[Ljava/io/File;
    invoke-static {v3}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->sortFilesByCreationDate([Ljava/io/File;)V

    .line 23
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 24
    .local v2, "file":Ljava/io/File;
    new-instance v1, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;-><init>(Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;Ljava/io/File;)V

    .line 25
    .local v1, "blackboxUploaderTask":Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;
    new-array v7, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v7}, Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "blackboxUploaderTask":Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method
