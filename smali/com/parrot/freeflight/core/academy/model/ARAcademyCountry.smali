.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;
.super Ljava/lang/Object;
.source "ARAcademyCountry.java"


# static fields
.field private static final ARACADEMY_COUNTRY_ISO:Ljava/lang/String; = "iso"

.field private static final ARACADEMY_COUNTRY_ISO3:Ljava/lang/String; = "iso3"

.field private static final ARACADEMY_COUNTRY_LEVEL:Ljava/lang/String; = "level"

.field private static final ARACADEMY_COUNTRY_NAME:Ljava/lang/String; = "name"

.field private static final ARACADEMY_COUNTRY_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_COUNTRY_NUMCODE:Ljava/lang/String; = "numcode"

.field private static final ARACADEMY_COUNTRY_PRINTABLE_NAME:Ljava/lang/String; = "printable_name"

.field private static final ARACADEMY_COUNTRY_TAG:Ljava/lang/String; = "ARAcademyCountry"


# instance fields
.field protected countryIso:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iso"
    .end annotation
.end field

.field protected countryIso3:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iso3"
    .end annotation
.end field

.field protected countryLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field protected countryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field protected countryNumcode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numcode"
    .end annotation
.end field

.field protected countryPrintableName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "printable_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryIso:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getIso3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryLevel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumcode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryNumcode:I

    return v0
.end method

.method public getPrintableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    return-object v0
.end method

.method public setIso(Ljava/lang/String;)V
    .locals 0
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryIso:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setIso3(Ljava/lang/String;)V
    .locals 0
    .param p1, "iso3"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryIso3:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryLevel:I

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setNumcode(I)V
    .locals 0
    .param p1, "numcode"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryNumcode:I

    .line 74
    return-void
.end method

.method public setPrintableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "printableName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyCountry;->countryPrintableName:Ljava/lang/String;

    .line 66
    return-void
.end method
