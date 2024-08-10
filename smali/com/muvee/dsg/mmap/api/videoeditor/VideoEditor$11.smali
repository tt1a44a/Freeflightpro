.class Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->saveEx(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

.field final synthetic b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field final synthetic c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iput-object p2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v1, 0x2

    const/4 v11, 0x3

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 854
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/sdk/Engine;->setPreviewEx(Z)V

    .line 862
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 894
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;-><init>()V

    .line 895
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v5, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetTimelineDuration(Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;)I

    .line 896
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::invoke: duration=%d"

    new-array v7, v3, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;->duration:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v5, v3, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetAudioOutProperties(ZZ)I

    .line 900
    new-instance v5, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;-><init>()V

    .line 901
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;

    invoke-direct {v7, p0, v0, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;[I)V

    invoke-virtual {v5, v11, v6, v7}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->prepare(ILjava/lang/String;Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;)V

    .line 944
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v6

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$2;

    invoke-direct {v8, p0, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;)V

    invoke-virtual {v6, v7, v8}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->init(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;)V

    .line 968
    const-string v6, "AUDIO_RENDER_THREAD"

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;

    invoke-direct {v7, p0, v4, v5, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$3;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;[ILcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;)V

    invoke-static {v6, v7}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1069
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)[Z

    move-result-object v5

    monitor-enter v5

    .line 1070
    :try_start_0
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "::invoke: 00 %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)[Z

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)[Z

    move-result-object v0

    const/4 v6, 0x0

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_4

    move v0, v2

    .line 1074
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->c:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;

    invoke-direct {v5, p0, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$4;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;[I)V

    new-instance v6, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$5;

    invoke-direct {v6, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11$5;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;)V

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativePlay(IILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    .line 1109
    :goto_1
    monitor-enter v4

    .line 1110
    const/4 v5, 0x1

    :try_start_1
    aput v0, v4, v5

    .line 1111
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1112
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1114
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->signalEndOfInputStream()V

    .line 1116
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::invoke: %s"

    new-array v7, v3, [Ljava/lang/Object;

    const-string/jumbo v8, "saveEx---"

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :goto_2
    monitor-enter v4

    .line 1120
    :try_start_2
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::invoke: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v5, 0x0

    aget v5, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    .line 1123
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1129
    :goto_3
    :try_start_4
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1074
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_0
    move v0, v1

    .line 1105
    goto :goto_1

    .line 1112
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1126
    :cond_1
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1132
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "::invoke: %s"

    new-array v7, v3, [Ljava/lang/Object;

    const-string/jumbo v8, "saveEx--"

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    monitor-enter v4

    .line 1135
    const/4 v5, 0x1

    :try_start_8
    aget v5, v4, v5

    if-eqz v5, :cond_2

    .line 1136
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->a:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 1138
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "::invoke: delete=%b"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_2
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1142
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    if-eqz v5, :cond_3

    .line 1143
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-interface {v5, v2, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 1144
    aget v4, v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 1154
    :goto_4
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-interface {v4, v1, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 1160
    :cond_3
    :goto_5
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "::invoke: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "saveEx-"

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1140
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 1146
    :sswitch_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-interface {v1, v3, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    goto :goto_5

    .line 1149
    :sswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    invoke-interface {v1, v11, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    goto :goto_5

    .line 1152
    :sswitch_2
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;->b:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    const/4 v5, 0x4

    invoke-interface {v4, v5, v10}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    goto :goto_4

    .line 1124
    :catch_0
    move-exception v5

    goto/16 :goto_3

    :cond_4
    move v0, v3

    goto/16 :goto_0

    .line 862
    :array_0
    .array-data 4
        -0xa
        -0xa
        -0xa
    .end array-data

    .line 1144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method
