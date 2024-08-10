.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;
.super Ljava/lang/Object;
.source "ARAcademyUser.java"


# static fields
.field private static final ARACADEMY_USER_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_USER_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_USER_TAG:Ljava/lang/String; = "ARAcademyUser"

.field private static final ARACADEMY_USER_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected userEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field protected userUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->userEmail:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->userUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->userUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->userEmail:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyUser;->userUsername:Ljava/lang/String;

    .line 39
    return-void
.end method
