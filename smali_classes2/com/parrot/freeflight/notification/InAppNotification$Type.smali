.class public final enum Lcom/parrot/freeflight/notification/InAppNotification$Type;
.super Ljava/lang/Enum;
.source "InAppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/notification/InAppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/notification/InAppNotification$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/notification/InAppNotification$Type;

.field public static final enum MEDIA:Lcom/parrot/freeflight/notification/InAppNotification$Type;

.field public static final enum MY_PARROT:Lcom/parrot/freeflight/notification/InAppNotification$Type;

.field public static final enum OFFER:Lcom/parrot/freeflight/notification/InAppNotification$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;

    const-string v1, "OFFER"

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/notification/InAppNotification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;->OFFER:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 30
    new-instance v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;

    const-string v1, "MY_PARROT"

    invoke-direct {v0, v1, v3}, Lcom/parrot/freeflight/notification/InAppNotification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MY_PARROT:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 34
    new-instance v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v4}, Lcom/parrot/freeflight/notification/InAppNotification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MEDIA:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/freeflight/notification/InAppNotification$Type;

    sget-object v1, Lcom/parrot/freeflight/notification/InAppNotification$Type;->OFFER:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MY_PARROT:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/freeflight/notification/InAppNotification$Type;->MEDIA:Lcom/parrot/freeflight/notification/InAppNotification$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;->$VALUES:[Lcom/parrot/freeflight/notification/InAppNotification$Type;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/notification/InAppNotification$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/notification/InAppNotification$Type;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parrot/freeflight/notification/InAppNotification$Type;->$VALUES:[Lcom/parrot/freeflight/notification/InAppNotification$Type;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/notification/InAppNotification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/notification/InAppNotification$Type;

    return-object v0
.end method
