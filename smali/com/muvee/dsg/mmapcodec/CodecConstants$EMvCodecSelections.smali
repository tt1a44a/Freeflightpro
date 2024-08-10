.class public final enum Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;
.super Ljava/lang/Enum;
.source "CodecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/CodecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMvCodecSelections"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_CODEC_SELECTION_BUFFER:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

.field public static final enum MV_CODEC_SELECTION_TEXTURE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    const-string v1, "MV_CODEC_SELECTION_TEXTURE"

    const-string v2, "MV_CODEC_SELECTION_TEXTURE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->MV_CODEC_SELECTION_TEXTURE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    const-string v1, "MV_CODEC_SELECTION_BUFFER"

    const-string v2, "MV_CODEC_SELECTION_BUFFER"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->MV_CODEC_SELECTION_BUFFER:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->MV_CODEC_SELECTION_TEXTURE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->MV_CODEC_SELECTION_BUFFER:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->a:I

    .line 155
    iput-object p4, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->b:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSelections;->b:Ljava/lang/String;

    return-object v0
.end method
