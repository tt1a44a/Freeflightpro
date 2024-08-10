.class public Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;
.super Ljava/lang/Object;
.source "MediaExtractorWrapper.java"

# interfaces
.implements Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Constants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

.field private b:Landroid/media/MediaExtractor;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->c:I

    .line 30
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 31
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    .line 32
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->c:I

    .line 33
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 54
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 55
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v2, v0, v1, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->c:I

    if-nez v2, :cond_0

    .line 57
    const-string v2, "com.muvee.dsg.mmapcodec.MediaExtractorWrapper"

    const-string v3, "::advance: %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iput v6, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->c:I

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/32 v4, 0x3d090

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 62
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 63
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v4, v2, v3, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    const-string v0, "com.muvee.dsg.mmapcodec.MediaExtractorWrapper"

    const-string v1, "::advance: getSampleFlags=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    :goto_0
    return-void

    .line 67
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    .line 73
    :cond_4
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->c:I

    if-ne v0, v6, :cond_5

    .line 74
    const-string v0, "com.muvee.dsg.mmapcodec.MediaExtractorWrapper"

    const-string v1, "::advance: %d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_5
    iput v7, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->c:I

    .line 77
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0
.end method

.method public getSampleFlags()I
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    goto :goto_0
.end method

.method public getSampleTime()J
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getVideoCacheFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "com.muvee.dsg.mmapcodec.MediaExtractorWrapper"

    const-string v2, "::readSampleData: %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "reading from file"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 100
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 101
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 102
    const-string v1, "com.muvee.dsg.mmapcodec.MediaExtractorWrapper"

    const-string v2, "::readSampleData: sampleSize=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 111
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 112
    const-string v1, "com.muvee.dsg.mmapcodec.MediaExtractorWrapper"

    const-string v2, "::readSampleData: readSampleData=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 84
    return-void
.end method

.method public seekTo(JI)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 48
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 45
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaExtractorWrapper;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 36
    return-void
.end method
