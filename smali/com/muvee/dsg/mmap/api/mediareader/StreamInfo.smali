.class public Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;
.super Ljava/lang/Object;
.source "StreamInfo.java"


# instance fields
.field public audFrames:I

.field public audioBitRate:I

.field public audioCodecType:I

.field public audioDuration:I

.field public audioNoChannels:I

.field public audioTimeScale:I

.field public audioTrackNo:I

.field public creationTime:D

.field public h264Compatibility:I

.field public h264Profile:I

.field public lastSyncFrameNo:I

.field public latitude:D

.field public longitude:D

.field public majorBrand:I

.field public numAudioTracks:I

.field public numSyncSamples:I

.field public numTracks:I

.field public numVideoTracks:I

.field public rotationDegree:I

.field public samplingRate:I

.field public vidFrames:I

.field public videoBitRate:I

.field public videoCodecType:I

.field public videoDuration:I

.field public videoFPS:I

.field public videoFrameHeight:I

.field public videoFrameWidth:I

.field public videoTimeScale:I

.field public videoTrackNo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->majorBrand:I

    .line 54
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numTracks:I

    .line 58
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numAudioTracks:I

    .line 62
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numVideoTracks:I

    .line 66
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoTrackNo:I

    .line 70
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoCodecType:I

    .line 74
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFrameWidth:I

    .line 78
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFrameHeight:I

    .line 82
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFPS:I

    .line 86
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoBitRate:I

    .line 90
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoDuration:I

    .line 94
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoTimeScale:I

    .line 98
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->vidFrames:I

    .line 102
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numSyncSamples:I

    .line 106
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->lastSyncFrameNo:I

    .line 110
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioTrackNo:I

    .line 114
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioCodecType:I

    .line 118
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioNoChannels:I

    .line 122
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->samplingRate:I

    .line 126
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioBitRate:I

    .line 130
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioDuration:I

    .line 134
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audFrames:I

    .line 138
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioTimeScale:I

    .line 142
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->h264Profile:I

    .line 146
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->h264Compatibility:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->rotationDegree:I

    .line 17
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->majorBrand:I

    .line 54
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numTracks:I

    .line 58
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numAudioTracks:I

    .line 62
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numVideoTracks:I

    .line 66
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoTrackNo:I

    .line 70
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoCodecType:I

    .line 74
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFrameWidth:I

    .line 78
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFrameHeight:I

    .line 82
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFPS:I

    .line 86
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoBitRate:I

    .line 90
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoDuration:I

    .line 94
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoTimeScale:I

    .line 98
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->vidFrames:I

    .line 102
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numSyncSamples:I

    .line 106
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->lastSyncFrameNo:I

    .line 110
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioTrackNo:I

    .line 114
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioCodecType:I

    .line 118
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioNoChannels:I

    .line 122
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->samplingRate:I

    .line 126
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioBitRate:I

    .line 130
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioDuration:I

    .line 134
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audFrames:I

    .line 138
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioTimeScale:I

    .line 142
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->h264Profile:I

    .line 146
    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->h264Compatibility:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->rotationDegree:I

    .line 20
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 23
    add-int/lit8 v0, v1, 0x1

    .line 24
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 20
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 27
    :goto_2
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 28
    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 29
    :goto_3
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 30
    :catch_2
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 31
    :goto_4
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 34
    :cond_0
    return-void

    .line 30
    :catch_3
    move-exception v1

    goto :goto_4

    .line 28
    :catch_4
    move-exception v1

    goto :goto_3

    .line 26
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static a([Ljava/lang/Object;)Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->a([Ljava/lang/Object;)Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCreationTime()Ljava/util/Date;
    .locals 14

    .prologue
    const-wide v12, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/16 v2, 0x0

    const/16 v10, 0xd

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 167
    const-string v0, "com.muvee.dsg.mmap.api.mediareader.StreamInfo"

    const-string v1, "::getCreationTime: creationTime=%f"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->creationTime:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v0, "GMT+00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 170
    const/16 v0, 0x770

    invoke-virtual {v4, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 171
    const/4 v0, 0x2

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/4 v0, 0x5

    invoke-virtual {v4, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v0, 0xb

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 174
    const/16 v0, 0xc

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 175
    invoke-virtual {v4, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v0, 0xe

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v0, 0xf

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 180
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->creationTime:D

    .line 181
    :goto_0
    cmpl-double v5, v0, v2

    if-lez v5, :cond_1

    .line 182
    cmpl-double v5, v0, v12

    if-lez v5, :cond_0

    .line 183
    const v5, 0x7fffffff

    invoke-virtual {v4, v10, v5}, Ljava/util/Calendar;->add(II)V

    .line 184
    sub-double/2addr v0, v12

    goto :goto_0

    .line 186
    :cond_0
    double-to-int v0, v0

    invoke-virtual {v4, v10, v0}, Ljava/util/Calendar;->add(II)V

    move-wide v0, v2

    .line 187
    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamInfo{majorBrand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->majorBrand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numTracks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numAudioTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numAudioTracks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numVideoTracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numVideoTracks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoTrackNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoTrackNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCodecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFrameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFrameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFPS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoFPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoTimeScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoTimeScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vidFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->vidFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSyncSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->numSyncSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastSyncFrameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->lastSyncFrameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioTrackNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioTrackNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCodecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioNoChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioNoChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioTimeScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->audioTimeScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h264Profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->h264Profile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", h264Compatibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->h264Compatibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotationDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->rotationDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->creationTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
