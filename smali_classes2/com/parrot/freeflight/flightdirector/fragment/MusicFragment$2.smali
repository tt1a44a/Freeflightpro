.class Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;
.super Ljava/lang/Object;
.source "MusicFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicSelected(Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V
    .locals 4
    .param p1, "item"    # Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setMusicPath(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {p1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setMusicStartTime(F)V

    .line 119
    return-void
.end method

.method public onSampleMoved(F)V
    .locals 1
    .param p1, "startTime"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment$2;->this$0:Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;->mParamsBuilder:Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightdirector/util/SettingsParamsBuilder;->setMusicStartTime(F)V

    .line 113
    return-void
.end method
