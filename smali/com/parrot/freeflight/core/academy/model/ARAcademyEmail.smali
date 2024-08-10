.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;
.super Ljava/lang/Object;
.source "ARAcademyEmail.java"


# static fields
.field private static final ARACADEMY_EMAIL_EMAIL:Ljava/lang/String; = "email"

.field private static final ARACADEMY_EMAIL_ERRORS:Ljava/lang/String; = "errors"

.field private static final ARACADEMY_EMAIL_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_EMAIL_TAG:Ljava/lang/String; = "ARAcademyEmail"


# instance fields
.field protected emailEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field protected emailErrors:Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;->emailErrors:Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;->emailEmail:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setErrors(Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;)V
    .locals 0
    .param p1, "errors"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyEmail;->emailErrors:Lcom/parrot/freeflight/core/academy/model/ARAcademyErrors;

    .line 45
    return-void
.end method
