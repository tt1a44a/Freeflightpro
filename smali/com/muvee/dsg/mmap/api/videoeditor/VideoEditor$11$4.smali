.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;[I)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;->b:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeEgl()V
    .locals 0

    .prologue
    .line 1094
    return-void
.end method

.method public setUpEgl()V
    .locals 0

    .prologue
    .line 1091
    return-void
.end method

.method public swap()V
    .locals 4

    .prologue
    .line 1081
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativePlay:swap:++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->swap()V

    .line 1083
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;->a:[I

    monitor-enter v1

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;->a:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 1085
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;->a:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1086
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nativePlay:swap:--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
