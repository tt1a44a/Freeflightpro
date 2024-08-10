.class public interface abstract Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask$UploadListener;
.super Ljava/lang/Object;
.source "BlackboxUploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/uploader/BlackboxUploaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadListener"
.end annotation


# virtual methods
.method public abstract onFileUploaded(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onUploadError(Ljava/io/File;Z)V
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
