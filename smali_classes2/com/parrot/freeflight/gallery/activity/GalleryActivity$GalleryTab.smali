.class final enum Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;
.super Ljava/lang/Enum;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/activity/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GalleryTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

.field public static final enum BEST_OF:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

.field public static final enum MEDIA:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->MEDIA:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    new-instance v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    const-string v1, "BEST_OF"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->BEST_OF:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    sget-object v1, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->MEDIA:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->BEST_OF:Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    aput-object v1, v0, v3

    sput-object v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->$VALUES:[Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->$VALUES:[Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/gallery/activity/GalleryActivity$GalleryTab;

    return-object v0
.end method
