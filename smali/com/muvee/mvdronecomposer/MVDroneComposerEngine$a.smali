.class final enum Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;
.super Ljava/lang/Enum;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

.field public static final enum b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

.field public static final enum c:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

.field private static final synthetic d:[Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    const-string v1, "EXPORT"

    invoke-direct {v0, v1, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    const-string v1, "SEEK"

    invoke-direct {v0, v1, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->c:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    .line 415
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->c:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->d:[Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

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
    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;
    .locals 1

    .prologue
    .line 415
    const-class v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    return-object v0
.end method

.method public static values()[Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->d:[Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    invoke-virtual {v0}, [Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    return-object v0
.end method
