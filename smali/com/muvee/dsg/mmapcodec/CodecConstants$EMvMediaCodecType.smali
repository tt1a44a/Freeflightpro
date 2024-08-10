.class public final enum Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;
.super Ljava/lang/Enum;
.source "CodecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/CodecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMvMediaCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_MEDIA_CODEC_BMP:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public static final enum MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public static final enum MV_MEDIA_CODEC_JPG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public static final enum MV_MEDIA_CODEC_MPEG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public static final enum MV_MEDIA_CODEC_PNG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public static final enum MV_MEDIA_CODEC_RAW:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field public static final enum MV_MEDIA_CODEC_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field private static final synthetic d:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v1, "MV_MEDIA_CODEC_UNKNOWN"

    const-string v4, "MV_MEDIA_CODEC_UNKNOWN"

    const-string v5, ""

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    new-instance v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v4, "MV_MEDIA_CODEC_H264"

    const-string v7, "MV_MEDIA_CODEC_H264"

    const-string/jumbo v8, "video/avc"

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    new-instance v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v4, "MV_MEDIA_CODEC_MPEG"

    const-string v7, "MV_MEDIA_CODEC_MPEG"

    const-string v8, ""

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_MPEG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    new-instance v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v4, "MV_MEDIA_CODEC_JPG"

    const-string v7, "MV_MEDIA_CODEC_JPG"

    const-string v8, ""

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_JPG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 112
    new-instance v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v4, "MV_MEDIA_CODEC_PNG"

    const-string v7, "MV_MEDIA_CODEC_PNG"

    const-string v8, ""

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_PNG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    new-instance v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v4, "MV_MEDIA_CODEC_BMP"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string v7, "MV_MEDIA_CODEC_BMP"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_BMP:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    new-instance v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    const-string v4, "MV_MEDIA_CODEC_RAW"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "MV_MEDIA_CODEC_RAW"

    const-string v8, ""

    invoke-direct/range {v3 .. v8}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_RAW:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 110
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_MPEG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_JPG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_PNG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_BMP:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_RAW:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->d:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->a:I

    .line 120
    iput-object p4, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->b:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->c:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->d:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->a:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->c:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->b:Ljava/lang/String;

    return-object v0
.end method
