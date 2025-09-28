.class Lcom/offsec/nethunter/CARsenalFragment$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment;

    .line 133
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 136
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    const v0, 0x7f0a006b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 140
    .local v1, "settingsItem":Landroid/view/MenuItem;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 141
    const-string v4, "Settings"

    invoke-interface {p1, v3, v0, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 142
    const v0, 0x7f0800d7

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 143
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    :cond_0
    const v0, 0x7f0a005a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 148
    .local v4, "controllerItem":Landroid/view/MenuItem;
    if-nez v4, :cond_1

    .line 149
    const-string v5, "Controller"

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 150
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 152
    :cond_1
    const v0, 0x7f0a0066

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 153
    .local v5, "playItem":Landroid/view/MenuItem;
    if-nez v5, :cond_2

    .line 154
    const-string v6, "Play"

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 155
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    :cond_2
    const v0, 0x7f0a006d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 159
    .local v6, "stopItem":Landroid/view/MenuItem;
    if-nez v6, :cond_3

    .line 160
    const-string v7, "Stop"

    invoke-interface {p1, v3, v0, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 161
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 164
    :cond_3
    const v0, 0x7f0a005d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 165
    .local v7, "floatingItem":Landroid/view/MenuItem;
    if-nez v7, :cond_4

    .line 166
    const-string v8, "Floating"

    invoke-interface {p1, v3, v0, v3, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 167
    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    :cond_4
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 202
    .local v0, "id":I
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/CARsenalFragment;->requireView()Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0a017e

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunDocumentation()V

    .line 206
    return v3

    .line 207
    :cond_0
    const v2, 0x7f0a046e

    if-ne v0, v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunSetup()V

    .line 209
    return v3

    .line 210
    :cond_1
    const v2, 0x7f0a0548

    if-ne v0, v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunUpdate()V

    .line 212
    return v3

    .line 213
    :cond_2
    const v2, 0x7f0a0057

    const v4, 0x7f0a03cf

    if-ne v0, v2, :cond_4

    .line 214
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 215
    .local v2, "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 216
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/CARsenalFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 217
    .local v4, "current":Landroidx/fragment/app/Fragment;
    instance-of v5, v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    if-eqz v5, :cond_3

    .line 218
    move-object v5, v4

    check-cast v5, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->access$100(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V

    .line 221
    .end local v4    # "current":Landroidx/fragment/app/Fragment;
    :cond_3
    return v3

    .line 222
    .end local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    :cond_4
    const v2, 0x7f0a0027

    if-ne v0, v2, :cond_5

    .line 223
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v2}, Lcom/offsec/nethunter/CARsenalFragment;->RunAbout()V

    .line 224
    return v3

    .line 225
    :cond_5
    const v2, 0x7f0a006b

    const/4 v5, 0x0

    if-ne v0, v2, :cond_7

    .line 226
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 227
    .restart local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    if-nez v4, :cond_6

    .line 228
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/CARsenalFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 229
    .restart local v4    # "current":Landroidx/fragment/app/Fragment;
    instance-of v5, v4, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    if-eqz v5, :cond_6

    .line 230
    move-object v5, v4

    check-cast v5, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->access$200(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    .line 233
    .end local v4    # "current":Landroidx/fragment/app/Fragment;
    :cond_6
    return v3

    .line 234
    .end local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    :cond_7
    const v2, 0x7f0a006f

    if-ne v0, v2, :cond_9

    .line 235
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 236
    .restart local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 237
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/CARsenalFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 238
    .restart local v4    # "current":Landroidx/fragment/app/Fragment;
    instance-of v5, v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    if-eqz v5, :cond_8

    .line 239
    move-object v5, v4

    check-cast v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->access$300(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    .line 242
    .end local v4    # "current":Landroidx/fragment/app/Fragment;
    :cond_8
    return v3

    .line 243
    .end local v2    # "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    :cond_9
    const v2, 0x7f0a0066

    if-ne v0, v2, :cond_b

    .line 244
    const v2, 0x7f0a042c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 245
    .local v2, "runICSIM":Landroid/widget/Button;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 246
    :cond_a
    return v3

    .line 247
    .end local v2    # "runICSIM":Landroid/widget/Button;
    :cond_b
    const v2, 0x7f0a006d

    if-ne v0, v2, :cond_d

    .line 248
    const v2, 0x7f0a04d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 249
    .local v2, "stopICSIM":Landroid/widget/Button;
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 250
    :cond_c
    return v3

    .line 251
    .end local v2    # "stopICSIM":Landroid/widget/Button;
    :cond_d
    const v2, 0x7f0a005d

    if-ne v0, v2, :cond_f

    .line 252
    const v2, 0x7f0a0290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 253
    .local v2, "floatICSIM":Landroid/widget/Button;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 254
    :cond_e
    return v3

    .line 255
    .end local v2    # "floatICSIM":Landroid/widget/Button;
    :cond_f
    const v2, 0x7f0a005a

    if-ne v0, v2, :cond_12

    .line 256
    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 257
    .local v2, "controlsContainer":Landroid/widget/FrameLayout;
    if-eqz v2, :cond_11

    .line 258
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_10

    .line 259
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_10
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 264
    :cond_11
    :goto_0
    return v3

    .line 266
    .end local v2    # "controlsContainer":Landroid/widget/FrameLayout;
    :cond_12
    return v5
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .line 173
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 174
    .local v0, "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 177
    .local v1, "currentTab":I
    const v2, 0x7f0a006b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 178
    .local v2, "settingsItem":Landroid/view/MenuItem;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    :cond_1
    const v5, 0x7f0a006f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 182
    .local v5, "toolsSettingsItem":Landroid/view/MenuItem;
    if-eqz v5, :cond_3

    if-ne v1, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    :cond_3
    const v6, 0x7f0a0057

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 186
    .local v6, "canusbSettingsItem":Landroid/view/MenuItem;
    if-eqz v6, :cond_5

    const/4 v7, 0x2

    if-ne v1, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    :cond_5
    const v7, 0x7f0a0066

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 190
    .local v7, "playItem":Landroid/view/MenuItem;
    const v8, 0x7f0a006d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 191
    .local v8, "stopItem":Landroid/view/MenuItem;
    const v9, 0x7f0a005d

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 192
    .local v9, "floatingItem":Landroid/view/MenuItem;
    const v10, 0x7f0a005a

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 193
    .local v10, "controllerItem":Landroid/view/MenuItem;
    const/4 v11, 0x4

    if-eqz v7, :cond_7

    if-ne v1, v11, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :cond_7
    if-eqz v8, :cond_9

    if-ne v1, v11, :cond_8

    const/4 v12, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    :cond_9
    if-eqz v9, :cond_b

    if-ne v1, v11, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    :cond_b
    if-eqz v10, :cond_d

    if-ne v1, v11, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-interface {v10, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    :cond_d
    return-void
.end method
