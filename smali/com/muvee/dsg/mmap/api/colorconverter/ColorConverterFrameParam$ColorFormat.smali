.class public final enum Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;
.super Ljava/lang/Enum;
.source "ColorConverterFrameParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMVCF_RGB32:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

.field public static final enum EMVCF_RGB565:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

.field public static final enum EMVCF_YUV420:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

.field public static final enum EMVCF_YUV420SP:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    const-string v1, "EMVCF_YUV420"

    invoke-direct {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_YUV420:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    .line 10
    new-instance v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    const-string v1, "EMVCF_YUV420SP"

    invoke-direct {v0, v1, v3}, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_YUV420SP:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    .line 11
    new-instance v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    const-string v1, "EMVCF_RGB565"

    invoke-direct {v0, v1, v4}, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_RGB565:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    .line 12
    new-instance v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    const-string v1, "EMVCF_RGB32"

    invoke-direct {v0, v1, v5}, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_RGB32:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    sget-object v1, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_YUV420:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_YUV420SP:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_RGB565:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->EMVCF_RGB32:Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->a:[Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->a:[Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/colorconverter/ColorConverterFrameParam$ColorFormat;

    return-object v0
.end method
