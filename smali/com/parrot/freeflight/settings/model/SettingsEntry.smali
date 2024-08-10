.class public abstract Lcom/parrot/freeflight/settings/model/SettingsEntry;
.super Ljava/lang/Object;
.source "SettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/model/SettingsEntry$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "W:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACCESSORIES_SETTINGS_VALUE:I = 0x6

.field public static final BOOLEAN_SETTINGS_VALUE:I = 0x5

.field public static final BOUNDED_RECOMMENDED_VALUE:I = 0x18

.field public static final BOUNDED_VALUE:I = 0x0

.field public static final BUTTON_SETTINGS_VALUE:I = 0x7

.field public static final CIRCLING_DIRECTION_VALUE:I = 0x9

.field public static final EDITABLE_TEXT_VALUE:I = 0x1

.field public static final FPV_SETTINGS_VALUE:I = 0x16

.field public static final GPS_STATUSES_SETTINGS_VALUE:I = 0x13

.field public static final IMAGE_TEXT_VALUE:I = 0x11

.field public static final JOYSTICK_SETTINGS_VALUE:I = 0x3

.field public static final JOYSTICK_WINGX_SETTINGS_VALUE:I = 0x12

.field public static final PILOTING_SETTINGS:I = 0x17

.field public static final PITCH_MODE_VALUE:I = 0xa

.field public static final POOL_SIZE_VALUE:I = 0x8

.field public static final RETURN_HOME_DRONE_STATUS_VALUE:I = 0xe

.field public static final TEXT_BUTTON_VALUE:I = 0xf

.field public static final TEXT_VALUE:I = 0x2

.field public static final THREE_RADIO_BUTTONS_SETTINGS_VALUE:I = 0x15

.field public static final TOGGLE_SETTINGS_VALUE:I = 0x4

.field public static final TWO_RADIO_BUTTONS_SETTINGS_VALUE:I = 0x14

.field public static final WIFI_BAND_VALUE:I = 0xd

.field public static final WIFI_CHANNEL_VALUE:I = 0x10

.field public static final WIFI_LOCALISATION_VALUE:I = 0xc

.field public static final WIFI_NAME_VALUE:I = 0xb


# instance fields
.field private mEditable:Z

.field private final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mValueType:I

.field private mVisibility:Z


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "valueType"    # I
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mVisibility:Z

    .line 76
    iput-boolean v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mEditable:Z

    .line 79
    iput p1, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mValueType:I

    .line 80
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mName:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mValue:Ljava/lang/Object;

    .line 82
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueType()I
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mValueType:I

    return v0
.end method

.method protected abstract hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mEditable:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mVisibility:Z

    return v0
.end method

.method protected abstract readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TW;)TT;"
        }
    .end annotation
.end method

.method public reset(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TW;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TW;"
    return-void
.end method

.method public abstract sendValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 120
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mEditable:Z

    .line 121
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 110
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mVisibility:Z

    if-eq v0, p1, :cond_0

    .line 111
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mVisibility:Z

    .line 113
    :cond_0
    return-void
.end method

.method public update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Z
    .locals 2
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TW;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TW;"
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->readValue(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "newValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->updateVisibility()V

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/settings/model/SettingsEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected updateVisibility()V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<TT;TU;TV;TW;>;"
    return-void
.end method
