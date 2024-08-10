.class public Lcom/parrot/freeflight/settings/view/FixedWingSettingsViewHolderFactory;
.super Ljava/lang/Object;
.source "FixedWingSettingsViewHolderFactory.java"

# interfaces
.implements Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "viewType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0c010c

    const v2, 0x7f0c010d

    const/4 v3, 0x0

    .line 24
    packed-switch p3, :pswitch_data_0

    .line 126
    :pswitch_0
    const/4 v1, 0x0

    .line 129
    .local v1, "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :goto_0
    return-object v1

    .line 26
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_1
    const v2, 0x7f0c0108

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 31
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_2
    const v2, 0x7f0c0102

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 36
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_3
    const v2, 0x7f0c010a

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 41
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_4
    const v2, 0x7f0c010b

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 46
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_5
    const v2, 0x7f0c0109

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 51
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_6
    const v2, 0x7f0c0105

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/ImageTextViewLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 56
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_7
    const v2, 0x7f0c0106

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 61
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_8
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 66
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_9
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 71
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_a
    const v2, 0x7f0c0101

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 76
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_b
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/CirclingDirectionViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 81
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_c
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/PitchModeViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 86
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_d
    const v2, 0x7f0c0110

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 91
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_e
    const v2, 0x7f0c010f

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 93
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 96
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_f
    const v2, 0x7f0c010e

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 101
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_10
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;-><init>(Landroid/view/View;)V

    .line 103
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 106
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_11
    const v2, 0x7f0c0104

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/GpsStatusesViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 111
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_12
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 116
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_13
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/RadioButtonSettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 121
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_14
    const v2, 0x7f0c0103

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto/16 :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
