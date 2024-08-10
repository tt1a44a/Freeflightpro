.class public Lcom/parrot/freeflight/core/authentication/model/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# instance fields
.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field public lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field public publicName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "academy_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 17
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parrot/freeflight/core/authentication/model/UserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicName"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->publicName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->firstName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->lastName:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/parrot/freeflight/core/authentication/model/UserProfile;->email:Ljava/lang/String;

    .line 25
    return-void
.end method
