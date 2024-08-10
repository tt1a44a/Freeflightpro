.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;
.super Ljava/lang/Enum;
.source "TextureRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

.field public static final enum NORMAL:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    const-string v1, "NORMAL"

    const/16 v2, 0xde1

    invoke-direct {v0, v1, v3, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    .line 23
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    const-string v1, "EXTERNAL_A"

    const v2, 0x8d65

    invoke-direct {v0, v1, v4, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->NORMAL:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->EXTERNAL_A:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->type:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender$TextureType;

    return-object v0
.end method
