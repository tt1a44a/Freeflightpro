.class public final enum Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
.super Ljava/lang/Enum;
.source "ItemOffsetDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

.field public static final enum BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

.field public static final enum HORIZONTAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

.field public static final enum VERTICAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->HORIZONTAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    .line 14
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->VERTICAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    .line 15
    new-instance v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    sget-object v1, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->HORIZONTAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->VERTICAL:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->BOTH:Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->$VALUES:[Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->$VALUES:[Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/view/recyclerview/ItemOffsetDecoration$Orientation;

    return-object v0
.end method
