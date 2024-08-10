.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
.super Ljava/lang/Object;
.source "ARAcademyErrors.java"


# static fields
.field private static final ARACADEMY_ERRORS_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_ERRORS_EMAIL_ACADEMY:Ljava/lang/String; = "email_academy"

.field private static final ARACADEMY_ERRORS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_ERRORS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ARACADEMY_ERRORS_TAG:Ljava/lang/String; = "ARAcademyErrors"

.field private static final ARACADEMY_ERRORS_USERNAME:Ljava/lang/String; = "username"


# instance fields
.field protected errorsEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field protected errorsEmailAcademy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email_academy"
    .end annotation
.end field

.field protected errorsPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field protected errorsUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAcademy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsEmail:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setEmailAcademy(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAcademy"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsEmailAcademy:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsPassword:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;->errorsUsername:Ljava/lang/String;

    .line 46
    return-void
.end method
