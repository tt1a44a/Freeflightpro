.class public Lcom/muvee/dsg/mmapcodec/CodecInitParams;
.super Ljava/lang/Object;
.source "CodecInitParams.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# instance fields
.field public mBitRate:I

.field public mBufferType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

.field public mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public mFileName:Ljava/lang/String;

.field public mFrameRate:I

.field public mHeight:I

.field public mIFrameInterval:I

.field public mITotalFrames:I

.field public mMakeUsable:I

.field public mMediaType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

.field public mReqdHeight:I

.field public mReqdWidth:I

.field public mRotateAngle:I

.field public mSourceId:J

.field public mStartSeek:J

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    .line 11
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    .line 12
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    .line 13
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    .line 14
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    .line 15
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    .line 16
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mRotateAngle:I

    .line 17
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mIFrameInterval:I

    .line 18
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mITotalFrames:I

    .line 19
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMakeUsable:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mStartSeek:J

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 24
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMediaType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    .line 25
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 26
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBufferType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 99
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    .line 11
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    .line 12
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    .line 13
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    .line 14
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    .line 15
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    .line 16
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mRotateAngle:I

    .line 17
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mIFrameInterval:I

    .line 18
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mITotalFrames:I

    .line 19
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMakeUsable:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mStartSeek:J

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 24
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMediaType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    .line 25
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 26
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBufferType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 29
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 29
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 44
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 45
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 46
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 40
    :cond_2
    :try_start_2
    aget-object v0, p1, v1

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 47
    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 48
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 51
    :cond_3
    return-void
.end method

.method private static a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 64
    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->b([Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method private b([Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 69
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 71
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move v0, v1

    .line 69
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 84
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 77
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    move-result-object v3

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 86
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 80
    :cond_2
    :try_start_2
    aget-object v0, p1, v1

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 87
    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 88
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 91
    :cond_3
    return-void
.end method

.method private static c([Ljava/lang/Object;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmapcodec/CodecInitParams;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    aget-object v0, p0, v2

    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->c([Ljava/lang/Object;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :cond_0
    aget-object v0, p0, v2

    const-string/jumbo v1, "setValues"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {p0}, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
