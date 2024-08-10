.class public abstract Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AFlightDirectorActivity.java"


# static fields
.field public static final REQUEST_CODE_EXPORT:I = 0xb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity$1;-><init>(Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    return-void
.end method


# virtual methods
.method protected launchExport()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/ExportActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->finish()V

    .line 102
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorRegistrationManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    .line 79
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getFlightDirectorManager()Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mFlightDirectorManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;

    invoke-static {p0}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getInstance(Landroid/content/Context;)Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorManager;->preparePreviewThumbs(Ljava/util/List;)Ljava/util/HashMap;

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->removeListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mRegistrationManager:Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/AFlightDirectorActivity;->mRegistrationListener:Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/FlightDirectorRegistrationManager;->addListener(Lcom/parrot/freeflight/core/registration/RegistrationManager$RegistrationListener;)V

    .line 88
    return-void
.end method
