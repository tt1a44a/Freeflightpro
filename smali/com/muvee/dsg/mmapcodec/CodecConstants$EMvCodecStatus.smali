.class public final enum Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
.super Ljava/lang/Enum;
.source "CodecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmapcodec/CodecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMvCodecStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public static final enum MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public static final enum MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public static final enum MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public static final enum MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public static final enum MV_CS_STATE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field public static final enum MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

.field private static final synthetic c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_BUSY"

    const-string v2, "BUSY"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_OK"

    const-string v2, "OK"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_FAIL"

    const-string v2, "FAIL"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_STATE"

    const-string v2, "STATE"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_STATE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_EOF"

    const-string v2, "EOF"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    const-string v1, "MV_CS_EXCEPTION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "EXCEPTION"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_STATE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_UNKNOWN:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->a:I

    .line 39
    iput-object p4, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->c:[Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->b:Ljava/lang/String;

    return-object v0
.end method
