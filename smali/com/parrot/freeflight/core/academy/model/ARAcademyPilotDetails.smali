.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;
.super Ljava/lang/Object;
.source "ARAcademyPilotDetails.java"


# static fields
.field private static final ARACADEMY_PILOTDETAILS_AVATAR:Ljava/lang/String; = "avatar"

.field private static final ARACADEMY_PILOTDETAILS_BIOGRAPHY:Ljava/lang/String; = "biography"

.field private static final ARACADEMY_PILOTDETAILS_FACEBOOK:Ljava/lang/String; = "facebook"

.field private static final ARACADEMY_PILOTDETAILS_GMAIL:Ljava/lang/String; = "gmail"

.field private static final ARACADEMY_PILOTDETAILS_GOOGLE_PLUS:Ljava/lang/String; = "google_plus"

.field private static final ARACADEMY_PILOTDETAILS_MSN:Ljava/lang/String; = "msn"

.field private static final ARACADEMY_PILOTDETAILS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PILOTDETAILS_PSN:Ljava/lang/String; = "psn"

.field private static final ARACADEMY_PILOTDETAILS_SKYPE:Ljava/lang/String; = "skype"

.field private static final ARACADEMY_PILOTDETAILS_STATUS:Ljava/lang/String; = "status"

.field private static final ARACADEMY_PILOTDETAILS_STEAM:Ljava/lang/String; = "steam"

.field private static final ARACADEMY_PILOTDETAILS_TAG:Ljava/lang/String; = "ARAcademyPilotDetails"

.field private static final ARACADEMY_PILOTDETAILS_TWITTER:Ljava/lang/String; = "twitter"

.field private static final ARACADEMY_PILOTDETAILS_WEBSITE:Ljava/lang/String; = "website"

.field private static final ARACADEMY_PILOTDETAILS_XBOX_LIVE:Ljava/lang/String; = "xbox_live"

.field private static final ARACADEMY_PILOTDETAILS_YOUTUBE:Ljava/lang/String; = "youtube"


# instance fields
.field protected pilotDetailsAvatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field protected pilotDetailsBiography:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biography"
    .end annotation
.end field

.field protected pilotDetailsFacebook:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook"
    .end annotation
.end field

.field protected pilotDetailsGmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gmail"
    .end annotation
.end field

.field protected pilotDetailsGooglePlus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "google_plus"
    .end annotation
.end field

.field protected pilotDetailsMsn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msn"
    .end annotation
.end field

.field protected pilotDetailsPsn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "psn"
    .end annotation
.end field

.field protected pilotDetailsSkype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skype"
    .end annotation
.end field

.field protected pilotDetailsStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field protected pilotDetailsSteam:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steam"
    .end annotation
.end field

.field protected pilotDetailsTwitter:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter"
    .end annotation
.end field

.field protected pilotDetailsWebsite:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website"
    .end annotation
.end field

.field protected pilotDetailsXboxLive:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xbox_live"
    .end annotation
.end field

.field protected pilotDetailsYoutube:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "youtube"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    return-object v0
.end method

.method public getGmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGooglePlus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    return-object v0
.end method

.method public getMsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    return-object v0
.end method

.method public getPsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    return-object v0
.end method

.method public getSkype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSteam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public getXboxLive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    return-object v0
.end method

.method public getYoutube()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsAvatar:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setBiography(Ljava/lang/String;)V
    .locals 0
    .param p1, "biography"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsBiography:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebook"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsFacebook:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setGmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmail"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsGmail:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setGooglePlus(Ljava/lang/String;)V
    .locals 0
    .param p1, "googlePlus"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsGooglePlus:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setMsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msn"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsMsn:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPsn(Ljava/lang/String;)V
    .locals 0
    .param p1, "Psn"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsPsn:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSkype(Ljava/lang/String;)V
    .locals 0
    .param p1, "skype"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsSkype:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsStatus:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSteam(Ljava/lang/String;)V
    .locals 0
    .param p1, "steam"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsSteam:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitter"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsTwitter:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1, "website"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsWebsite:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setXboxLive(Ljava/lang/String;)V
    .locals 0
    .param p1, "xboxLive"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsXboxLive:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setYoutube(Ljava/lang/String;)V
    .locals 0
    .param p1, "youtube"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;->pilotDetailsYoutube:Ljava/lang/String;

    .line 122
    return-void
.end method
