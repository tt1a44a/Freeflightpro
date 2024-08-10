.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;
.super Ljava/lang/Object;
.source "ARAcademyPilot.java"


# static fields
.field private static final ARACADEMY_PILOT_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PILOT_PROFILE:Ljava/lang/String; = "profile"

.field private static final ARACADEMY_PILOT_STATISTICS:Ljava/lang/String; = "statistics"

.field private static final ARACADEMY_PILOT_TAG:Ljava/lang/String; = "ARAcademyPilot"


# instance fields
.field protected pilotProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile"
    .end annotation
.end field

.field protected pilotStatistics:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statistics"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getProfile()Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->pilotProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;

    return-object v0
.end method

.method public getStatistics()Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->pilotStatistics:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;

    return-object v0
.end method

.method public setProfile(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;)V
    .locals 0
    .param p1, "profile"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->pilotProfile:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotDetails;

    .line 37
    return-void
.end method

.method public setStatistics(Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;)V
    .locals 0
    .param p1, "statistics"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyPilot;->pilotStatistics:Lcom/parrot/freeflight/core/academy/model/ARAcademyPilotStatistics;

    .line 45
    return-void
.end method
