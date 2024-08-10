.class public final enum Lcom/muvee/uhd2hd/ETranscoderErrors;
.super Ljava/lang/Enum;
.source "ETranscoderErrors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/uhd2hd/ETranscoderErrors;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum AUDIO_JOIN_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum DECODER_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum DEVICE_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum ENCODER_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum FILE_IO_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum FILE_RENAME_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum INPUT_FILE_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum OPERATION_CANCELLED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum UNSUPPORTED_ENC_1080P:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum UNSUPPORTED_ENC_720P:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum UNSUPPORTED_FILE_IN:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum UNSUPPORTED_OPTION:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field public static final enum VIDEO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

.field private static final synthetic a:[Lcom/muvee/uhd2hd/ETranscoderErrors;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "DEVICE_UNSUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->DEVICE_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 5
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "DECODER_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->DECODER_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 6
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "ENCODER_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->ENCODER_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 7
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "INPUT_FILE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->INPUT_FILE_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 8
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "FILE_IO_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->FILE_IO_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 9
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "UNSUPPORTED_ENC_1080P"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_ENC_1080P:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 10
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "UNSUPPORTED_ENC_720P"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_ENC_720P:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 11
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "UNSUPPORTED_FILE_IN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_FILE_IN:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 12
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "UNSUPPORTED_OPTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_OPTION:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 13
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "OPERATION_CANCELLED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->OPERATION_CANCELLED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 14
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "VIDEO_CODEC_UNSUPPORTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->VIDEO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 15
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "AUDIO_CODEC_UNSUPPORTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->AUDIO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 16
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "AUDIO_JOIN_FAILED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->AUDIO_JOIN_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 17
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "FILE_RENAME_FAILED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->FILE_RENAME_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 18
    new-instance v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    const-string v1, "FAILED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/ETranscoderErrors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    .line 3
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/muvee/uhd2hd/ETranscoderErrors;

    sget-object v1, Lcom/muvee/uhd2hd/ETranscoderErrors;->DEVICE_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/uhd2hd/ETranscoderErrors;->DECODER_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/uhd2hd/ETranscoderErrors;->ENCODER_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/muvee/uhd2hd/ETranscoderErrors;->INPUT_FILE_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/muvee/uhd2hd/ETranscoderErrors;->FILE_IO_ERROR:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_ENC_1080P:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_ENC_720P:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_FILE_IN:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->UNSUPPORTED_OPTION:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->OPERATION_CANCELLED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->VIDEO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->AUDIO_CODEC_UNSUPPORTED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->AUDIO_JOIN_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->FILE_RENAME_FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/muvee/uhd2hd/ETranscoderErrors;->FAILED:Lcom/muvee/uhd2hd/ETranscoderErrors;

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->a:[Lcom/muvee/uhd2hd/ETranscoderErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/uhd2hd/ETranscoderErrors;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/uhd2hd/ETranscoderErrors;

    return-object v0
.end method

.method public static values()[Lcom/muvee/uhd2hd/ETranscoderErrors;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/uhd2hd/ETranscoderErrors;->a:[Lcom/muvee/uhd2hd/ETranscoderErrors;

    invoke-virtual {v0}, [Lcom/muvee/uhd2hd/ETranscoderErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/uhd2hd/ETranscoderErrors;

    return-object v0
.end method
