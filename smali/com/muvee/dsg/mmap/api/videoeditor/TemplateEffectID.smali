.class public final enum Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;
.super Ljava/lang/Enum;
.source "TemplateEffectID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;

    return-object v0
.end method

.method public static values()[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;->a:[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;

    invoke-virtual {v0}, [Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/videoeditor/TemplateEffectID;

    return-object v0
.end method
