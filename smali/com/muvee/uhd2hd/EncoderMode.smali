.class public final enum Lcom/muvee/uhd2hd/EncoderMode;
.super Ljava/lang/Enum;
.source "EncoderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/uhd2hd/EncoderMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NORMAL_1080P:Lcom/muvee/uhd2hd/EncoderMode;

.field public static final enum NORMAL_720P:Lcom/muvee/uhd2hd/EncoderMode;

.field public static final enum UNSUPPORTED:Lcom/muvee/uhd2hd/EncoderMode;

.field private static final synthetic a:[Lcom/muvee/uhd2hd/EncoderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/muvee/uhd2hd/EncoderMode;

    const-string v1, "NORMAL_1080P"

    invoke-direct {v0, v1, v2}, Lcom/muvee/uhd2hd/EncoderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_1080P:Lcom/muvee/uhd2hd/EncoderMode;

    .line 5
    new-instance v0, Lcom/muvee/uhd2hd/EncoderMode;

    const-string v1, "NORMAL_720P"

    invoke-direct {v0, v1, v3}, Lcom/muvee/uhd2hd/EncoderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_720P:Lcom/muvee/uhd2hd/EncoderMode;

    .line 6
    new-instance v0, Lcom/muvee/uhd2hd/EncoderMode;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/muvee/uhd2hd/EncoderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/uhd2hd/EncoderMode;->UNSUPPORTED:Lcom/muvee/uhd2hd/EncoderMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/uhd2hd/EncoderMode;

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_1080P:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_720P:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->UNSUPPORTED:Lcom/muvee/uhd2hd/EncoderMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/uhd2hd/EncoderMode;->a:[Lcom/muvee/uhd2hd/EncoderMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/uhd2hd/EncoderMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/uhd2hd/EncoderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/uhd2hd/EncoderMode;

    return-object v0
.end method

.method public static values()[Lcom/muvee/uhd2hd/EncoderMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/uhd2hd/EncoderMode;->a:[Lcom/muvee/uhd2hd/EncoderMode;

    invoke-virtual {v0}, [Lcom/muvee/uhd2hd/EncoderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/uhd2hd/EncoderMode;

    return-object v0
.end method
