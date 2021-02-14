<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="c4ca-1ece-ac34-246b" name="GF9 Tanks: The Modern Age" revision="2" battleScribeVersion="2.03" authorName="Jason Bardey" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <publications>
    <publication id="7d3f-da6b-14eb-0a69" name="Tanks: The Modern Age Rulebook" publisherUrl="https://d21zdtsl28sndy.cloudfront.net/downloads/tanks/Tanks-Modern-Age-Rulebook.pdf"/>
  </publications>
  <costTypes>
    <costType id="c525-9df6-1886-28e4" name="pts" defaultCostLimit="-1.0" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="d470-1387-e9b7-4e31" name="Tank">
      <characteristicTypes>
        <characteristicType id="0ab1-226b-bc56-8d04" name="Crew Slots"/>
        <characteristicType id="4bdf-d9ca-d63e-e9ae" name="Initiative"/>
        <characteristicType id="511c-4053-b96a-3393" name="Attack"/>
        <characteristicType id="5aea-3707-f320-3b58" name="Defence"/>
        <characteristicType id="b389-b659-b7d8-1dbe" name="Damage Capacity"/>
      </characteristicTypes>
    </profileType>
    <profileType id="451c-01d4-9710-cb24" name="Helicopter">
      <characteristicTypes>
        <characteristicType id="bf6f-f512-5674-b503" name="Crew Slots"/>
        <characteristicType id="e219-982f-5433-3abd" name="Initiative"/>
        <characteristicType id="4e57-cebc-8da6-d530" name="Attack"/>
        <characteristicType id="020f-df40-e821-e102" name="Defence"/>
        <characteristicType id="ed1d-6e05-2aa0-3a02" name="Damage Capacity"/>
        <characteristicType id="328e-bbfc-bbb0-fb1e" name="Ammo Slots"/>
      </characteristicTypes>
    </profileType>
    <profileType id="eb2f-6085-8d83-60f4" name="Platoon Card">
      <characteristicTypes>
        <characteristicType id="0c79-2c98-1b7b-abb2" name="Ability Text"/>
      </characteristicTypes>
    </profileType>
    <profileType id="4681-227b-f9c3-19b9" name="Upgrade Card">
      <characteristicTypes>
        <characteristicType id="e410-4d67-58da-c109" name="Ability Text"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="5c6a-3ad0-54b2-6193" name="Helicopter" hidden="false"/>
    <categoryEntry id="41cd-9622-6b80-1bc3" name="Tank" hidden="false"/>
    <categoryEntry id="5e8f-5e97-f0cf-b29a" name="Crew" hidden="false"/>
    <categoryEntry id="1478-ca00-f06f-b9d5" name="Upgrade" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="d878-5ffc-498f-f821" name="Platoon" hidden="false">
      <categoryLinks>
        <categoryLink id="8914-4229-4b18-6072" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
        <categoryLink id="8888-b43d-feaa-8b0c" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="8ec9-b9d7-f71a-4e8a" name="Upgrade: Ammo (Global)" hidden="false" collective="false" import="true">
      <categoryLinks>
        <categoryLink id="d319-584f-962f-9c03" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="a3a1-0028-e9d8-8d03" name="MANPADS" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="60ee-043d-51c7-9016" name="MANPADS" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">You may discard this card when shooting a Helicopter to give this Tank Missiles (6).</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="5753-c033-5a1e-0125" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="1eb6-4568-53f6-c30f" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="403f-2bba-fe47-a8fd" name="Extra Ammunition" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="f80d-8c2b-758a-36c1" name="Extra Ammunition" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard this card to re-roll all of your Attack dice.
If this Model takes an uncancelled Hit, the Shooting player may upgrade their first uncancelled hit to a Critical Hit.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="a3ad-662a-711f-9333" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2232-a799-9abe-c10e" name="Willie Pete" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="7326-4624-0f5a-2f76" name="Willie Pete" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When Shooting, you may discard this card instead of rolling Attack dice. The target Tank gains -3 Attack and counts as being in Cover until the end of the Shooting Phase.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="2851-b6db-cab4-0ec3" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="299b-5f41-0f6f-275d" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="9683-5421-5510-f346" name="Crew: Commander (Global)" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="970e-6750-8ea5-0169" name="Cunning Commander" hidden="false" collective="false" import="true" type="upgrade">
          <comment>British Striker Expansion</comment>
          <profiles>
            <profile id="d78d-8259-6269-dc1f" name="Cunning Commander" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative in the Movement Phase	</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="b2ed-2a28-bf79-2f1e" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c5e9-fce0-b808-8295" name="Aggressive Commander" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="d79e-75ac-f101-7088" name="Aggressive Commander" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative in the Shooting Phase</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="a01c-58d0-ca97-7a8e" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a9bf-5adc-d225-0604" name="Altruistic Commander" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="5835-668a-50cd-e203" name="Altruistic Commander" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When a friendly Tank within Close Range of this Tank suffers a Critical Hit, you may discard t his card to transfer the damage and effect from that Critical Hit to this Tank</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="6e51-8bb3-8211-8d21" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="cddd-dd24-472f-ae21" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="4de4-d2e9-40af-d8e1" name="Superb Commander" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="3a9e-2dd0-fc0f-bc60" name="Superb Commander" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="bda5-3a62-bd78-5c3d" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="bb64-7d15-1351-2d97" name="Risky Commander" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="608f-c458-7c15-547a" name="Risky Commander" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When this Model suffers a Critical Hit while defending against a Tank that is within Close Range, you may draw a second Critical Hit. If you do, choose one to apply to this Model and discard the other.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="b884-fc7d-a0db-fb32" name="Crew: Gunner (Global)" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="d220-50e8-cf29-d3c2" name="Bloodthirsty Gunner" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="9572-0e67-daa1-b8a4" name="Bloodthirsty Gunner" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Attack if target Model is at Close Range</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="df61-a1e2-b5c8-601a" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="c697-789d-b470-3aa1" name="Risky Gunner" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="7d77-318f-5f1e-2285" name="Risky Gunner" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When Shooting at a Model that is at Close Range, you score Critical Hits on a 5+ instead of a 6.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="e4fa-a834-0ccd-cc93" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="39f9-6a23-90c6-c4a4" name="Dead-Eye Gunner" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="d580-450e-5b28-f109" name="Dead-Eye Gunner" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">This Model may upgrade one uncancelled Hit to a Critical Hit.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="5f1e-ad0a-5773-deaa" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="1bbb-b3af-215c-9e6c" name="Asassin" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="824f-41db-e6d2-e338" name="Asassin" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When attacking, you may cancel two uncancelled Hits to have the defending player choose and discard one Crew card assigned to the target Model.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="fdcf-2f7f-5f96-d261" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6a5b-7447-4a53-a452" name="Resourceful Gunner" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="e9c3-38ca-5483-3dd7" name="Resourceful Gunner" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative in the Shooting Phase.
You may discard this card instead of an Ammo Upgrade card when resolving that card.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="29df-b095-c325-3c12" name="Crew: Loader (Global)" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="8bc9-7eae-bd10-0a44" name="Duck Hunter" hidden="false" collective="false" import="true" type="upgrade">
          <comment>British Striker Expansion</comment>
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="189a-a608-ea0f-12a9" name="Duck Hunter" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Instead of its normal Attack this Model may make an unmodified 4 Attack against a target Helicopter		</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="e241-33f3-018b-cdc6" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="7e7a-e076-740d-0e84" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="49d5-7a1b-0152-a2be" name="Hasty Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="de95-580f-1f1b-5aa5" name="Hasty Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+2 Initiative in the Shooting Phase
-1 Initiative in the Movement Phase</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="4cff-abd1-2815-2467" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="f8a2-cf4d-38e5-480f" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="f0a0-67dd-0911-c8f0" name="Precise Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="cef0-ac83-1d01-9984" name="Precise Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">You may re-roll one Attack die per turn.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="31fd-6544-37c8-58bd" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="dd7c-7140-e0f2-4d9e" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="2cde-3c3e-af82-feeb" name="Focused Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="adb5-0322-f9af-6859" name="Focused Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">While Stationary, if this Tank scores any uncancelled Critical Hits, you may exchange one Critical Hit for two Hits.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="a2b9-8a08-cddd-80f5" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="ba54-ad0b-948a-2c66" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="d665-4611-e2b5-ac12" name="Risky Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="461a-e360-046d-3c7a" name="Risky Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When Shooting at Close Range, if this Tank scores any uncancelled Critical Hits, you may excahnge one Critical Hit for two Hits.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="9e02-5f71-5c34-9008" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="997f-a822-3f43-6af9" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="da2d-5769-5589-3b41" name="Clever Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="bace-08fb-48ae-2cb9" name="Clever Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">If you discard an Ammo Upgrade card when Shooting, but do not score any Hits or Critical Hits, return the Upgrade Card to the Tank.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="48a7-edf4-1a26-9fae" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="dae1-1315-ede1-ecee" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ab01-8e90-8b69-a5dc" name="Resourceful Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="dc71-67eb-d059-9660" name="Resourceful Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">This Tank may have two of the same Ammo Upgrade cards. You may only use one of these each turn.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="3b3c-4aba-9ee6-0f7b" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="0ce2-633c-b240-34cc" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="9f4e-3567-50d5-20f0" name="Aggressive Loader" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="1de1-a254-f44c-8e82" name="Aggressive Loader" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative in the Shooting Phase.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="49a2-ca8c-8c71-d253" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="369b-ce33-5bb4-d8a2" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="829b-dd36-4114-f34f" name="Crew: Driver (Global)" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="ba72-10e7-e307-1715" name="Cunning Driver" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="5a87-a3ea-292c-113e" name="Cunning Driver" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative in the Movement Phase</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="58de-805e-5c24-f6e4" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="7049-c1c6-5eba-34e7" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="dc10-b057-f0bc-35ca" name="Risky Driver" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="b6a7-f077-c922-2611" name="Risky Driver" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Do not subtract any Defence dice when this Tank is the target of a Close Range shot.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="249d-7178-e04d-0620" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="a836-5e5e-94ee-9b6c" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="5a8f-2126-db5e-9d43" name="Determined Driver" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="04ad-c647-7d86-2280" name="Determined Driver" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When attacking, if you have a repairable Damage card on this Tank, you may re-roll one Attack die.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="bb65-b577-a975-ad2f" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="5a5b-4649-002b-83a5" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="614d-c13f-c440-fe7c" name="Racing Driver" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="0bc0-396e-625a-00eb" name="Racing Driver" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+2 Initiative in the Movement Phase.
-1 Initiative in the Shooting Phase.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="b24c-b3ca-87bd-44d7" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="f349-6faf-4d60-8b93" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="6b53-6bb8-bdd0-daa6" name="Defensive Driver" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="89bc-1101-4971-afc0" name="Defensive Driver" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When rolling Defence dice, you may re-roll one die.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="86fa-c4ee-4bd3-7e8a" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="9e61-637b-a626-46f7" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="66f8-3ce6-9d18-98c9" name="Daring Driver" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="e004-aa8f-e8a1-082e" name="Daring Driver" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When rolling Defence dice, if  this Tank is not in Cover you may re-roll any one Defence die.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="995b-fe8d-3c1e-afca" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
            <categoryLink id="94de-85e4-2361-9d80" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="86c1-09d8-de9b-01e6" name="Crew: Pilot (Global)" hidden="false" collective="false" import="true">
      <categoryLinks>
        <categoryLink id="8f8c-f9d0-7dc3-28e7" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="e371-86a4-ba44-591b" name="Daring Pilot" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="be29-cd43-854a-a537" name="Daring Pilot" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When rolling Defence dice, if this Helicopter is not in Cover you may re-roll any one Defence die.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="2828-ef29-30e9-1226" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
            <categoryLink id="0cb9-a3d0-6bdd-c4b5" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a264-38a1-d73f-2849" name="Cunning Pilot" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="d612-a683-871a-e4bf" name="Cunning Pilot" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Initiative in the Movement phase.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="fc4a-f876-b389-9d67" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
            <categoryLink id="a74a-cae9-7973-16c8" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="82fc-2c53-6b06-5808" name="Defensive Pilot" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="948d-6c80-3538-fea6" name="Defensive Pilot" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When rolling Defence dice, you may re-roll one die.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="ef43-4c72-0b7d-e73d" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
            <categoryLink id="fe73-6fb8-864b-b624" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="4.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="dc37-f304-971f-f5b9" name="Risky Pilot" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="61c4-f85c-4f6c-6ac4" name="Risky Pilot" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Do not subtract any Defence dice when this Helicopter is the target of a Close Range shot.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="9568-78c3-61bf-93ca" name="Crew" hidden="false" targetId="5e8f-5e97-f0cf-b29a" primary="false"/>
            <categoryLink id="b9aa-402a-dff1-fc74" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="cdd4-9cab-9bd9-7fcd" name="Upgrade: Equipment (Global)" hidden="false" collective="false" import="true">
      <categoryLinks>
        <categoryLink id="3bd8-da56-42db-1f9f" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="009e-e519-58f4-54ca" name="Bigger Hammer" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="aeae-76e3-a630-16ee" type="max"/>
          </constraints>
          <profiles>
            <profile id="b0b0-e172-ef81-d8bd" name="Bigger Hammer" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard to cancel a Damage Mobility Effect.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="5f43-2efc-0b94-33bb" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="3814-af75-83b0-632a" name="Protected Ammo" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="b44b-4b67-a214-a792" type="max"/>
          </constraints>
          <profiles>
            <profile id="63f2-7783-f8d6-78d8" name="Protected Ammo" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard this card to cancel an Ammo Explosion Critical card, replacing it with a new Critical card.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="faef-dada-2f57-e5ed" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="f218-038e-621b-9362" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="0c4d-783c-ef4d-71d7" name="Tool Kit" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="afe8-200e-40eb-efb7" type="max"/>
          </constraints>
          <profiles>
            <profile id="564a-c249-300f-abf0" name="Tool Kit" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">This Model may re-roll failed Repair rolls for Jammed Mechanisms, Damaged Engine, and Damaged Mobility.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="eede-a14c-6355-bcc4" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="ae2d-5b38-4ea3-e35b" name="Medical Kit" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="087d-bb3a-b39c-44dd" type="max"/>
          </constraints>
          <profiles>
            <profile id="c08f-778b-50ad-91bc" name="Medical Kit" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard to cancel an Injured Crew effect.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="eeeb-0978-8c49-45f2" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="4020-3d81-fe52-ba0a" name="Fire Extinguisher" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="6b83-4db6-9731-fb18" type="max"/>
          </constraints>
          <profiles>
            <profile id="9149-0bc8-cee7-e2bc" name="Fire Extinguisher" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard to cancel an Engine Fire effect.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="1341-bdae-0f9f-7e7e" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="a99e-2f69-43e6-6154" name="Liquid Courage" hidden="false" collective="false" import="true" type="upgrade">
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="19f9-da89-9b9a-3ee7" type="max"/>
          </constraints>
          <profiles>
            <profile id="c12e-23e3-912c-c1fe" name="Liquid Courage" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">This Model may re-roll failed Repair rolls for Bailed Out, Shell Shocked, and Stunned Crew.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="d340-0a9b-646f-f1bc" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="06fd-547c-7764-5b1c" name="Countermeasures" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="41cd-9622-6b80-1bc3" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint field="selections" scope="parent" value="1.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="f3c2-e02d-4b5f-1595" type="max"/>
          </constraints>
          <profiles>
            <profile id="136d-5200-f39c-2ca9" name="Countermeasures" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard before rolling Defence dice. During this roll, each result of a 3,4, or 5 cancels a Hit or Critical Hit chosen by the Shooting player, and each 6 cancels a Hit or Critical Hit chosen by the target player.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="4511-7536-3868-3d92" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
            <categoryLink id="68cb-33c5-0c87-f71a" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="3.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="5345-3f0c-0b43-c998" name="Upgrade: Armour (Global)" hidden="false" collective="false" import="true">
      <categoryLinks>
        <categoryLink id="929f-472d-651e-3526" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="59f8-958c-5eba-1490" name="ERA" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="aec0-b384-2e25-8b2f" name="ERA" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">When being targeted by Missiles this Tank gains +1 Defence</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="602e-be8d-ddb1-130b" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="ca69-2d5b-a8a3-ac6a" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b638-3d05-fe3f-f654" name="Improvised Armour" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="26db-30ab-f0c1-01cb" name="Improvised Armour" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">This Tank loses the Fast keyword. +1 Damage Capacity.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="ac55-239a-aea2-b1a9" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="1bb1-1490-f1ca-6641" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="b458-54cf-f6cd-f0bf" name="Camouflage Netting" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="5e70-ed04-deff-3964" name="Camouflage Netting" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">+1 Defence while Stationary. Discard this card the first time this Tank moves (this does not include movement made during setup).</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="ad1e-8a01-4fdc-6901" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="74ed-4f15-d3d3-1fcf" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="953b-342b-8661-b56a" name="Applique Armour" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="fe0f-475a-d0d5-18bd" name="Applique Armour" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">-1 Initiative
This Tank loses the Fast keyword. 
When defending, this Tank may re-roll any one Defence die.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="60b1-203b-41bc-6bb4" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="dccf-e718-c460-1b3a" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="f2e0-ebb0-ce62-aac4" name="Upgrade: Engine (Global)" hidden="false" collective="false" import="true">
      <selectionEntries>
        <selectionEntry id="71db-7d11-86a2-4296" name="Supercharger" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="0777-dcb3-16d7-5db7" name="Supercharger" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard to gain Fast for this Movement Phase
Fast: This Tank&apos;s Speed is 3</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="c32a-77da-e852-9cb5" name="Tank" hidden="false" targetId="41cd-9622-6b80-1bc3" primary="false"/>
            <categoryLink id="b717-ae41-f150-eef8" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
    <selectionEntryGroup id="e3ad-b2f5-97d8-eaf5" name="Upgrade: Doctrine (Global)" hidden="false" collective="false" import="true">
      <categoryLinks>
        <categoryLink id="142a-fe35-0348-1a3c" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
      </categoryLinks>
      <selectionEntries>
        <selectionEntry id="0ded-728f-257d-e86b" name="Ambush" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="3880-5716-8078-3717" name="Ambush" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard this card to Gain +4 Initiative during the Shooting Phase	</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="cc04-e1a3-d53f-b326" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="13ff-05dd-2e9f-6b25" name="Spearhead" hidden="false" collective="false" import="true" type="upgrade">
          <profiles>
            <profile id="a6ea-9072-2785-b760" name="Spearhead" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">After this Model is deployed, it can make a number of moves up to its Speed.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="c461-48a3-db18-b5f5" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="844e-199b-b198-8e61" name="Defensive Manoeuvres" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="41cd-9622-6b80-1bc3" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="7015-9088-56e1-0b82" name="Defensive Manoeuvres" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Discard immediately after rolling Defence dice to re-roll all your Defence dice.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <categoryLinks>
            <categoryLink id="bee6-e21e-270b-2034" name="Helicopter" hidden="false" targetId="5c6a-3ad0-54b2-6193" primary="false"/>
            <categoryLink id="8c1b-7583-e680-3c05" name="Upgrade" hidden="false" targetId="1478-ca00-f06f-b9d5" primary="false"/>
          </categoryLinks>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="2.0"/>
          </costs>
        </selectionEntry>
        <selectionEntry id="d7fe-c30d-14b7-0291" name="Adaptive" hidden="false" collective="false" import="true" type="upgrade">
          <modifiers>
            <modifier type="set" field="hidden" value="true">
              <conditions>
                <condition field="selections" scope="ancestor" value="0.0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" childId="5c6a-3ad0-54b2-6193" type="instanceOf"/>
              </conditions>
            </modifier>
          </modifiers>
          <profiles>
            <profile id="b04c-208e-9f48-9eb6" name="Adaptive" hidden="false" typeId="4681-227b-f9c3-19b9" typeName="Upgrade Card">
              <characteristics>
                <characteristic name="Ability Text" typeId="e410-4d67-58da-c109">Gain +2 Initiative if this Tank has three or more crew cards.</characteristic>
              </characteristics>
            </profile>
          </profiles>
          <costs>
            <cost name="pts" typeId="c525-9df6-1886-28e4" value="1.0"/>
          </costs>
        </selectionEntry>
      </selectionEntries>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedRules>
    <rule id="966f-45ab-6ac3-c837" name="Advanced Stabiliser" hidden="false">
      <description>You may re-roll up to two Attack dice</description>
    </rule>
    <rule id="458a-cf6f-36e5-e79a" name="Fast" hidden="false">
      <description>This Tank&apos;s Speed is 3.</description>
    </rule>
    <rule id="d441-5387-0036-2dab" name="Scout" hidden="false">
      <description>The Cover bonus grants this model +2 Defence instead of +1 Defence.</description>
    </rule>
    <rule id="3da3-8525-09c9-8125" name="Spearhead" hidden="false">
      <description>After this Model is deployed, it can make a number of moves up to its Speed.</description>
    </rule>
    <rule id="3d34-3eb0-f6e1-0e52" name="Artillery" hidden="false">
      <description>When this Tank shoots, it may draw Line of Sight through other Tanks. </description>
    </rule>
    <rule id="4efa-29ad-9553-cd34" name="Brutal" hidden="false">
      <description>After rolling Attack dice, upgrade one Hit to a Critical Hit.</description>
    </rule>
    <rule id="2a13-23fe-d1d0-4979" name="Forward Firing" publicationId="7d3f-da6b-14eb-0a69" page="Page 13" hidden="false">
      <description>This Model has a limited field of fire, see page 13.</description>
    </rule>
    <rule id="5807-b2d3-c117-d56b" name="Hammerhead" hidden="false">
      <description>The Cover bonus grants this Model +3 Defence instead of +1 Defence.</description>
    </rule>
    <rule id="65c6-17dd-3813-32e3" name="Predator" hidden="false">
      <description>This Model must move each turn. When shooting, this Model may re-roll up to two Attack dice and ignores the Shooting on the Move rule for Missiles.</description>
    </rule>
    <rule id="5624-e36f-1fe5-26f6" name="Stabiliser" hidden="false">
      <description>When shooting, this Model may re-roll up to one Attack dice.</description>
    </rule>
    <rule id="73d4-7716-8d7b-006a" name="Wheeled" hidden="false">
      <description>When moving into or from terrain, this Tank may only make a single move.</description>
    </rule>
    <rule id="0406-4110-1519-7897" name="Rapid Fire (X)" hidden="false">
      <description>This Model has X Attack when shooting at Helicopters or targets with 0 Base Defence.</description>
    </rule>
    <rule id="726c-f879-474a-444f" name="Missiles (X)" hidden="false">
      <description>When shooting, this Model can choose to roll X Attack dice against Tanks or Helicopters, with the following rules:

**Arming Distance**
Missiles may not target a Model of the same type that is within Close Range. 

Example: a Tank that is within Close Range of both a Low-flying Helicopter and another Tank may only target the Helicopter with its missiles.

**Shooting On The Move**
A Model with Missiles has a reduced chance of hitting based on its Speed Token:
Speed        | This Model...
Stationary | can shoot as normal.
Speed 1     | only scores a Hit on a 5 and a Critical hit on a 6.
Speed 2     | only scores a Hit on a 6 and cannot score Critical Hits.
Speed 3     | cannot shoot.</description>
    </rule>
  </sharedRules>
</gameSystem>